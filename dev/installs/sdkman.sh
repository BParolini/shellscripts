#!/usr/bin/env sh

# author: Bruno Parolini brunoparolini@gmail.com
# descriptiosn: Installs SDKMan, changes some configuration and installs various packages

curl -s "https://get.sdkman.io" | sh

source "$HOME/.sdkman/bin/sdkman-init.sh"

APPS=( "maven" "gradle" "springboot" "kotlin" "groovy" )

for app in $APPS
do
    echo "sdk install $app"
    sdk install $app
done
