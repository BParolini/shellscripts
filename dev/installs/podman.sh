#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs Podman

echo "Installing podman"
dnf install -y podman podman-compose podman-plugins buildah podman-docker podman-compose

ln -s "$XDG_RUNTIME_DIR/podman/podman.sock" "$XDG_RUNTIME_DIR/docker.sock"
