#!/usr/bin/env bash

ENIGMA_INSTALL_DIR=${ENIGMA_INSTALL_DIR:=$HOME/enigma-bbs}

LOGFILE_PATH=${ENIGMA_INSTALL_DIR}/logs/enigma-bbs.log
BUNYAN_BINARY_PATH=${ENIGMA_INSTALL_DIR}/enigma-bbs/node_modules/bunyan/bin/bunyan

PATH="$HOME/.local/share/mise/shims:$PATH"

tail -F $LOGFILE_PATH | $BUNYAN_BINARY_PATH
