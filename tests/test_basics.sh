#!/usr/bin/env bash
set -euo pipefail

terraform -chdir=terraform-learning/01-basics validate
