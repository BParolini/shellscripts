#!/usr/bin/env sh -x

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs or updates installed go packages

# Go development tools
go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install golang.org/x/tools/cmd/godoc@latest
go install github.com/a-h/templ/cmd/templ@latest
go install github.com/segmentio/golines@latest
go install golang.org/x/build/cmd/gorebuild@latest
go install github.com/spf13/cobra-cli@latest
go install -tags 'postgres,sqlite3' github.com/golang-migrate/migrate/v4/cmd/migrate@latest

# Protobuf
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest

# Extra apps
go install github.com/air-verse/air@latest
go install github.com/jesseduffield/lazygit@latest
