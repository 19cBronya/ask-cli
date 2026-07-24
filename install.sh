#!/usr/bin/env bash
set -eu

INSTALL_DIR="${HOME}/.local/bin"
INSTALL_PATH="${INSTALL_DIR}/ask"
REPO="19cBronya/ask-cli"
RAW="https://raw.githubusercontent.com/${REPO}/master/ask"

mkdir -p "${INSTALL_DIR}"
curl -sSL -o "${INSTALL_PATH}" "${RAW}"
chmod +x "${INSTALL_PATH}"

# add to shell profiles
add_path() {
    local rc="$1"
    grep -q '$HOME/.local/bin' "$rc" 2>/dev/null && return 0
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$rc"
}

add_path ~/.bashrc
add_path ~/.zshrc

echo "ask installed to ${INSTALL_PATH}"
echo
"${INSTALL_PATH}" -h
