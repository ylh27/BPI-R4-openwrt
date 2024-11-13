#!/bin/bash

# remove crypto-eip due to build error
sed -i 's/CONFIG_PACKAGE_kmod-crypto-eip=y/# CONFIG_PACKAGE_kmod-crypto-eip is not set/g' .config

make defconfig
