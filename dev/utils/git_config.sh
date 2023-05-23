#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# description: Sets Git global configuration (it assumes vim and kdiff3 are installed in the system) and installs GitHub CLI

if [ $# -eq 0 ]
then
    echo "No arguments supplied."
    echo "You must inform \"<user_name>\" \"<user_email>\" \"[<user_signingkey>]\""
    echo "If user_signingkey is not supplied, gpg signature will be disabled."
    exit 1
fi

git config --global user.name "$1"
git config --global user.email "$2"
git config --global color.ui auto
git config --global core.editor nvim
git config --global merge.tool kdiff3
git config --global gpg.program gpg2
git config --global pull.rebase false
git config --global init.defaultBranch main
git config --global checkout.workers 0
git config --global fetch.parallel 0
git config --global submodule.fetchJobs 0

if [ -n "$3" ]
then
    git config --global commit.gpgsign true
    git config --global user.signingkey "$3"
else
    git config --global commit.gpgsign false
    git config --global --unset user.signingkey
fi
