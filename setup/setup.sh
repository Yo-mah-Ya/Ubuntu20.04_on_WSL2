#!/usr/bin/env bash

set -euo pipefail

SOURCE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}) && pwd)
SCRIPTS_DIR=${SOURCE_DIR}/scripts

DEBIAN_FRONTEND=noninteractive

# build-essential
cd ~
sudo apt update -y && sudo apt install build-essential -y


# Other useful libraries
sudo apt install -y \
        clang-tidy \
        clang-format \
        google-mock \
        jq \
        libcurl4-openssl-dev \
        liblog4cxx-dev \
        libssl-dev \
        libprotobuf-dev \
        libboost-all-dev \
        libgtest-dev \
        libpulse-dev \
        nfs-common \
        openssl \
        protobuf-compiler \
        python-setuptools \
        tree \
        unzip \
        uuid-dev \
        zip \
        zlib1g-dev \
        zsh

# OpenSSL
# sudo curl https://www.openssl.org/source/old/1.0.2/openssl-1.0.2u.tar.gz
# sudo tar xvzf openssl-1.0.2u.tar.gz
# cd openssl-1.0.2u/
# sudo ./config --prefix=/usr/local/openssl-1.0.2 shared zlib
# sudo make depend
# sudo make
# sudo make test
# sudo make install

# apply OpenSSL to specified user
# Since Ubuntu 9.04 Jaunty Jackalope, LD_LIBRARY_PATH cannot be set in $HOME/.profile, /etc/profile, nor /etc/environment files. You must use /etc/ld.so.conf.d/*.conf configuration files.
# echo 'export LD_LIBRARY_PATH=/usr/local/openssl-1.1.1/lib' >> ~/.bashrc
# source ~/.bashrc

# apply OpenSSL to the shared libraries
# sudo echo "/usr/local/openssl-1.0.2/lib" > /etc/ld.so.conf.d/openssl-1.0.2.conf
# sudo ldconfig
# sudo ldconfig -p | grep libssl

# cmake
. ${SCRIPTS_DIR}/cmake.sh

# Mosquitto
cd ~
sudo apt install -y mosquitto

# git-secrets
. ${SCRIPTS_DIR}/git_secrets.sh

# Docker
. ${SCRIPTS_DIR}/docker.sh

# AWS CLI V2 for X86_64 latest version
. ${SCRIPTS_DIR}/aws_cli_v2.sh

#  AWS SDK for C++
# . ${SCRIPTS_DIR}/aws_sdk_for_cpp.sh

# Python
. ${SCRIPTS_DIR}/python.sh

# Node.js
. ${SCRIPTS_DIR}/nodejs.sh

# Golang
. ${SCRIPTS_DIR}/golang.sh

# Swift
# . ${SCRIPTS_DIR}/swift.sh

# Open JDK
. ${SCRIPTS_DIR}/java.sh

# PostgreSQL
# . ${SCRIPTS_DIR}/postgres.sh

# ssl-scan
# . ${SCRIPTS_DIR}/ssl_scan.sh
