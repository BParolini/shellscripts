#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs LSPs system wide

sudo dnf install -y nodejs-bash-language-server ShellCheck

go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/go-delve/delve/cmd/dlv@latest

# Using sudo to use the system's npm
sudo npm install -g dockerfile-language-server-nodejs \
                    graphql-language-service-server \
                    typescript typescript-language-server
