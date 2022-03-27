#!/usr/bin/env bash

cd ~
wget https://cmake.org/files/v3.20/cmake-3.20.0.tar.gz
tar zxvf cmake-3.20.0.tar.gz
cd cmake-3.20.0/
./configure && make && sudo make install
