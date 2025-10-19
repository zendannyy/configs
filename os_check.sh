#!/usr/bin/env bash 
# script for new installs or docker hosts 

# one-liner to determine os distro and id
OS_ID=$(uname)

if [ "$OS_ID" = 'Darwin' ]; then
    echo $OS_ID
    brew update
    brew install git curl wget
elif [$OS_ID = 'alpine' ]; then
    echo $OS_ID
    apk add -y git curl wget
elif [$OS_ID = 'fedora' ]; then
    echo $OS_ID
    dnf update -y
    dnf install -y git curl wget
elif [$OS_ID = 'ubuntu' ]; then
    echo $OS_ID
    apt-get update -y 
    apt-get install -y git curl wget
else
    echo "ERROR: Unsupported distribution: $OS_ID"

fi 