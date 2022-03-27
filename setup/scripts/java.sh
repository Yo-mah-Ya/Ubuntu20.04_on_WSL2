#!/usr/bin/env bash

cd ~
git clone https://github.com/jenv/jenv.git ~/.jenv
echo -e "\n# Java" >> ~/.bashrc
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(jenv init -)"' >> ~/.bashrc

source ~/.bashrc

apt search openjdk-\(\.\)\+-jdk$
apt install openjdk-11-jdk -y


jenv add /usr/lib/jvm/java-11-openjdk-amd64
jenv versions
jenv global 11
jenv enable-plugin export
source ~/.bashrc
