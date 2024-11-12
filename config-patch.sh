#!/bin/bash

# remove crypto-eip due to build error
sed -i 's/CONFIG_PACKAGE_kmod-crypto-eip=y/# CONFIG_PACKAGE_kmod-crypto-eip is not set/g' .config
# change luci feed
sed -i 's/gerrit.mediatek.inc\/openwrt\/feeds\/luci/github.com\/openwrt\/luci.git/g' feeds.conf.default
cat feeds.conf.default

make defconfig

cat .config
