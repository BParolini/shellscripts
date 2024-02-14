#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Adds Docker repository, installs Docker and enables Docker service

curl -L https://nixos.org/nix/install | sh -s -- --daemon
