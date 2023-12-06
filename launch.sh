set -e
THIS_EXEC=$(realpath "$0")
ROOT_DIR=$(dirname -- "$THIS_EXEC")

x-terminal-emulator -e "$ROOT_DIR/deboas.sh" "$@"