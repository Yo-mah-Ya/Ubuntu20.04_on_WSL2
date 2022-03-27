#!/usr/bin/env bash

cd ~
sudo apt install clang libicu-dev libcurl4-openssl-dev -y
wget https://swift.org/builds/swift-5.2.5-release/ubuntu2004/swift-5.2.5-RELEASE/swift-5.2.5-RELEASE-ubuntu20.04.tar.gz
tar xzvf swift-5.2.5-RELEASE-ubuntu20.04.tar.gz
mv swift-5.2.5-RELEASE-ubuntu20.04.tar.gz /usr/local/bin/swift
echo -e "\n# swift" >> ~/.bashrc
echo 'export PATH=${PATH}:/usr/local/bin/swift/usr/bin/swift' >> ~/.bashrc
