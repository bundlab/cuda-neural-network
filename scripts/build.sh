#!/bin/bash

mkdir -p build
cd build
cmake ..
make
./cuda_nn
