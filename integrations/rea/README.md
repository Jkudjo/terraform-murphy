# REA integration for Codex

This directory contains an opt-in setup helper for [REA (Reverse Engineer Anything)](https://github.com/morluto/rea), an external MCP server. **REA source is not vendored into this repository.** The helper installs/configures REA on the machine where you run it; pushing these files to GitHub does not install it on your Ubuntu desktop or in a Codex cloud workspace.

## Requirements

- Linux/macOS shell with Bash, Node.js **22.19+** (22.x), **24.11+** (24.x), or **26+**, and npm/npx
- On Linux, a procps-compatible `ps` command (Ubuntu package: `procps`)
- An available Codex client, configured for the current user

## Use

From the repository root:

```bash
bash integrations/rea/setup-codex.sh --check
bash integrations/rea/setup-codex.sh --plan
bash integrations/rea/setup-codex.sh --install
bash integrations/rea/setup-codex.sh --doctor
```

- `--check` checks prerequisites without downloading packages.
- `--plan` runs REA's official dry-run setup, showing proposed configuration changes. This may download the npm package.
- `--install` launches the official interactive setup limited to **Codex**. Review and approve the changes shown by REA. No optional Hopper installation is selected by this script.
- `--doctor` uses REA's read-only Codex diagnostics (may download the package).

Restart Codex after a successful setup. REA's setup normally registers MCP in your **user-level Codex configuration**, not this Git repository. It also installs its matching workflow instructions and keeps backups of changed settings. It does not alter repository infrastructure or Terraform state.

## Safety and lifecycle

Inspect upstream and the proposed changes before approving setup. This integration purposefully avoids running unknown binaries or installing optional native analysis engines without explicit approval. Only analyze applications and binaries you have permission to inspect. For package supply-chain stability, consider pinning `REA_PACKAGE` to an audited release:

```bash
REA_PACKAGE='rea-agents@6.7.0' bash integrations/rea/setup-codex.sh --plan
```

The default `REA_PACKAGE` is `rea-agents@latest`, so the selected version may change over time. To refresh REA later, review a new setup plan and rerun installation.

Upstream documentation: [README](https://github.com/morluto/rea#readme), [installation](https://github.com/morluto/rea/blob/main/docs/installation.md).
