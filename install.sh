#!/usr/bin/env bash
set -eu

INSTALL_DIR="${HOME}/.local/bin"
INSTALL_PATH="${INSTALL_DIR}/ask"
REPO="19cBronya/ask-cli"
RAW="https://raw.githubusercontent.com/${REPO}/master/ask"

mkdir -p "${INSTALL_DIR}"
curl -sSL -o "${INSTALL_PATH}" "${RAW}"
chmod +x "${INSTALL_PATH}"

if ! grep -q '$HOME/.local/bin' ~/.bashrc 2>/dev/null; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
fi

echo "ask installed to ${INSTALL_PATH}"
echo
"${INSTALL_PATH}" -h
