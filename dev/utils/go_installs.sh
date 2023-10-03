#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs or updates installed go packages

go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/go-delve/delve/cmd/dlv@latest
