#!/usr/bin/env bash
set -euo pipefail

# Opt-in REA MCP registration for Codex. No Terraform or application changes.
MODE="${1:---help}"
REA_PACKAGE="${REA_PACKAGE:-rea-agents@latest}"

usage() {
  cat <<'HELP'
Usage: bash integrations/rea/setup-codex.sh [--check|--plan|--install|--doctor]
  --check    Read-only local prerequisite checks
  --plan     Official REA setup dry-run for Codex (may download npm package)
  --install  Interactive Codex-only REA setup, with approval prompts
  --doctor   Read-only REA diagnostics for Codex (may download npm package)
Optional: REA_PACKAGE=rea-agents@<audited-version>
HELP
}

check() {
  command -v node >/dev/null || { echo 'Missing node' >&2; return 1; }
  command -v npm >/dev/null || { echo 'Missing npm' >&2; return 1; }
  command -v npx >/dev/null || { echo 'Missing npx' >&2; return 1; }
  if [[ "$(uname -s)" == Linux ]] && ! command -v ps >/dev/null; then
    echo 'Missing ps: install Ubuntu package procps' >&2; return 1
  fi
  local version major minor
  version="$(node -p 'process.versions.node')"
  major="${version%%.*}"
  minor="${version#*.}"; minor="${minor%%.*}"
  if ! [[ "$major" =~ ^[0-9]+$ && "$minor" =~ ^[0-9]+$ ]]; then
    echo "Could not parse Node.js version: $version" >&2; return 1
  fi
  if ! { (( major == 22 && minor >= 19 )) || (( major == 24 && minor >= 11 )) || (( major >= 26 )); }; then
    echo "Unsupported Node.js $version: need 22.19+, 24.11+, or 26+" >&2
    return 1
  fi
  echo "Prerequisites OK: Node.js $version, npm $(npm --version), npx, ps (where required)"
}

case "$MODE" in
  --help|-h) usage ;;
  --check) check ;;
  --plan)
    check
    echo "Previewing Codex-only REA setup. Review proposed changes."
    npx -y "$REA_PACKAGE" setup --client codex --dry-run
    ;;
  --install)
    check
    if [[ ! -t 0 || ! -t 1 || ! -t 2 ]]; then
      echo 'Interactive REA setup requires a terminal; use --plan first.' >&2
      exit 1
    fi
    echo "REA will ask you to review and approve Codex configuration changes."
    npx "$REA_PACKAGE" setup --client codex
    ;;
  --doctor)
    check
    npx -y "$REA_PACKAGE" doctor --client codex --json
    ;;
  *) usage >&2; exit 2 ;;
esac
