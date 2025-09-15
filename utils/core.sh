#!/bin/bash

export SETUP_FRAMEWORK_VERSION="0.0.2"
export SCRIPT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export UTILS_DIR="$SCRIPT_ROOT/utils"
export SETUP_DIR="$SCRIPT_ROOT/setup"
export LOGS_DIR="$SCRIPT_ROOT/logs"
export STATE_DIR="$SCRIPT_ROOT/logs/.state"

mkdir -p "$LOGS_DIR" "$STATE_DIR"

# Session config
export SESSION_ID="${SESSION_ID:-$(date +%Y%m%d_%H%M%S)}"
export LOG_FILE="$LOGS_DIR/setup_${SESSION_ID}.log"
export STATE_FILE="$STATE_DIR/session_${SESSION_ID}.state"
export PLAN_FILE="$STATE_DIR/plan_${SESSION_ID}.json"

# Runtime config
export SETUP_MODE="${SETUP_MODE:-interactive}"
export CONTINUE_ON_FAILURE="${CONTINUE_ON_FAILURE:-true}"
export REQUIRE_SUDO="${REQUIRE_SUDO:-true}"
export AUTO_RESTART="${AUTO_RESTART:-false}"

# Color config
export USE_COLORS="${USE_COLORS:-true}"
export FORCE_COLOR="${FORCE_COLOR:-false}"

# Validation
if [[ ! -d "$UTILS_DIR" ]]; then
    echo "ERROR: Utils directory not found at $UTILS_DIR" >&2
    exit 1
fi

# Mark as loaded
export CORE_CONFIG_LOADED=true

# Dev Env config
export DEV_ENV="${DEV_ENV:-$HOME/Developer/dev-env-v2}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

export PERSONAL_DIR="$HOME/personal"
export DEVELOPER_DIR="$HOME/developer"
export WORK_DIR="$HOME/work"
export VAULTS_DIR="$HOME/work"
export DEV_ENV_DIR="$HOME/personal/dev"
