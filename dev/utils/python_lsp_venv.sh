#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs python LSP and debug dependencies in venv

echo "Installing Cython, LSP + extras"
"$PWD/.venv/bin/python" -m pip install --upgrade pip setuptools wheel Cython python-lsp-server yapf flake8 pylint
