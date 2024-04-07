#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs or updates installed go packages

# Go development tools
go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install golang.org/x/tools/cmd/godoc@latest
go install github.com/cosmtrek/air@latest
go install github.com/a-h/templ/cmd/templ@latest
go install github.com/segmentio/golines@latest

# Extra apps
go install github.com/jesseduffield/lazygit@latest
