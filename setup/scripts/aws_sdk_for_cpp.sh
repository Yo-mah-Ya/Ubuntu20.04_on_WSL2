#!/usr/bin/env bash

#aws-c-common
cd ~
git clone https://github.com/awslabs/aws-c-common
cd aws-c-common && mkdir build && cd build
cmake -DCMAKE_PREFIX_PATH=/usr/local/lib/cmake -DCMAKE_INSTALL_PREFIX=/usr/local/lib/cmake ../
make && make install

#aws-checksums
cd ~
git clone https://github.com/awslabs/aws-checksums
cd aws-checksums && mkdir build && cd build
cmake -DCMAKE_PREFIX_PATH=/usr/local/lib/cmake -DCMAKE_INSTALL_PREFIX=/usr/local/lib/cmake ../
make && make install

#aws-c-event-stream
cd ~
git clone https://github.com/awslabs/aws-c-event-stream
cd aws-c-event-stream && mkdir build && cd build
git checkout refs/tags/v0.1.6
cmake -DCMAKE_PREFIX_PATH=/usr/local/lib/cmake -DCMAKE_INSTALL_PREFIX=/usr/local/lib/cmake ../
make && make install

#aws-sdk-cpp
cd ~
git clone https://github.com/aws/aws-sdk-cpp --recursive
cd aws-sdk-cpp && mkdir build && cd build
cmake -DCMAKE_PREFIX_PATH=/usr/local/lib/cmake -DCMAKE_INSTALL_PREFIX=/usr/local/lib/cmake -DBUILD_ONLY="s3" ../
make && make install
echo -e "\n# aws_sdk_for_cpp" >> ~/.bashrc
echo 'export CMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}:~/aws_sdk_for_cpp' >> ~/.bashrc
