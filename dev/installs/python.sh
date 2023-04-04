#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Installs multiple python versions

echo "Installing multiple Python versions and devel libs"
dnf install -y python3.10 python3.11 pipenv python3-Cython python3-extension-helpers python3.10-devel python3.11-devel \
               cairo-gobject-devel python3-gobject-devel gobject-introspection-devel python3-cairo-devel dbus-python-devel

echo "Preparing pip"
python3.10 -m ensurepip --upgrade
python3.11 -m ensurepip --upgrade

echo "Installing Cython"
python3.10 -m pip install --upgrade Cython
python3.11 -m pip install --upgrade Cython

echo "Upgrading packages for all installed Python versions"
BASEDIR=$(dirname "$0")

source $BASEDIR/../utils/python_package_upgrade.sh python3.10
source $BASEDIR/../utils/python_package_upgrade.sh python3.11
