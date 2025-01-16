#!/usr/bin/env bash

cd ~
git clone https://github.com/syndbg/goenv.git ~/.goenv
echo -e "\n# Golang" >> ~/.bashrc
echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.bashrc
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(goenv init -)"' >> ~/.bashrc

source ~/.bashrc

goenv install -l
goenv install 1.23.4
goenv global 1.23.4

# go env -w GO111MODULE=on
