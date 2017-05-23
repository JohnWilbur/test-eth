#!/bin/bash

mkdir build 
cd ./build 
cmake -DBUNDLE=miner .. 
make -j
