#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs kubectl

echo "Importing Kubernetes Fedora repository"
cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

echo "Updating repositories' cache and installing kubectl"
dnf install -y kubectl
