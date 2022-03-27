#!/usr/bin/env bash

cd ~

# this is an interactive mode
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo -e "\n# Rust" >> ~/.bashrc
echo "source ${HOME}/.cargo/env" >> ~/.bashrc
source ~/.bashrc
