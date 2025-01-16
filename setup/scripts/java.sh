#!/usr/bin/env bash

cd ~
git clone https://github.com/jenv/jenv.git ~/.jenv
echo -e "\n# Java" >> ~/.bashrc
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(jenv init -)"' >> ~/.bashrc

source ~/.bashrc

apt search openjdk-\(\.\)\+-jdk$
apt install -y
    openjdk-11-jdk \
    openjdk-17-jdk \
    openjdk-21-jdk


jenv add /usr/lib/jvm/java-11-openjdk-amd64
jenv add /usr/lib/jvm/java-17-openjdk-amd64
jenv add /usr/lib/jvm/java-21-openjdk-amd64
jenv versions
jenv global 21
jenv enable-plugin export
source ~/.bashrc
