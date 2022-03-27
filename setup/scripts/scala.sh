#!/usr/bin/env bash

git clone https://github.com/scalaenv/scalaenv.git ~/.scalaenv
echo -e "\n# scala" >> ~/.bashrc
echo 'export PATH="${HOME}/.scalaenv/bin:${PATH}"' >> ~/.bashrc
echo 'eval "$(scalaenv init -)"' >> ~/.bashrc
source ~/.bashrc
