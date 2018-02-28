#!/bin/bash
# update install run & report
 sudo apt-get update
 sudo apt-get install cmake build-essential libboost-all-dev
 git clone -b Linux https://github.com/nicehash/nheqminer.git
 cd nheqminer/cpu_xenoncat/Linux/asm/
 sh assemble.sh
 cd ../../../Linux_cmake/nheqminer_cpu
 cmake .
 make -j $(nproc)
 bash ./nheqminer -l us1-zcash.flypool.org:3333 -u t1Un5ELCTVgHZ6s2P4WaSUna4rXcsVnQdNm.p0t1
