#!/bin/bash
echo -e "\033[0;32mHow many CPU cores do you want to be used in compiling process? (Default is 1. Press enter for default.)\033[0m"
read -e CPU_CORES
if [ -z "$CPU_CORES" ]
then
	CPU_CORES=1
fi

# Clone MCPC code from MCPC official Github repository
	git clone https://github.com/MobilePayCoin/MobilePayCoin MCPC

# Entering MCPC directory
	cd MCPC

# Compile dependencies
	cd depends
	make -j$(echo $CPU_CORES) HOST=x86_64-apple-darwin17 
	cd ..

# Compile MCPC
	./autogen.sh
	./configure --prefix=$(pwd)/depends/x86_64-apple-darwin17 --enable-cxx --enable-static --disable-shared --disable-debug --disable-tests --disable-bench
	make -j$(echo $CPU_CORES) HOST=x86_64-apple-darwin17
	make deploy
	cd ..

# Create zip file of binaries
	cp MCPC/src/MCPCoind MCPC/src/MCPCoin-cli MCPC/src/MCPCoin-tx MCPC/src/qt/MCPCoin-qt MCPC/MCPC.dmg .
	zip MCPC-MacOS.zip MCPCoind MCPCoin-cli MCPCoin-tx MCPCoin-qt MCPC.dmg
	rm -f MCPCoind MCPCoin-cli MCPCoin-tx MCPCoin-qt MCPC.dmg