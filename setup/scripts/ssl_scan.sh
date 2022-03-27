#!/usr/bin/env bash

cd ~
git clone https://github.com/rbsec/sslscan.git && cd sslscan && make static

echo -e "\n# sslscan" >> ~/.bashrc
echo "alias sslscan=\"~/sslscan/sslscan\"" >> ~/.bashrc && source ~/.bashrc
cd ~
