#!/bin/bash

# remove crypto-eip due to build error
sed -i 's/CONFIG_PACKAGE_kmod-crypto-eip=y/# CONFIG_PACKAGE_kmod-crypto-eip is not set/g' .config

# add luci
sed -i '$a # LuCI\nCONFIG_PACKAGE_cgi-io=y\nCONFIG_PACKAGE_liblucihttp=y\nCONFIG_PACKAGE_luci=y\nCONFIG_PACKAGE_luci-app-firewall=y\nCONFIG_PACKAGE_luci-app-opkg=y\nCONFIG_PACKAGE_luci-base=y\nCONFIG_PACKAGE_luci-lib-base=y\nCONFIG_PACKAGE_luci-lib-ip=y\nCONFIG_PACKAGE_luci-lib-jsonc=y\nCONFIG_PACKAGE_luci-lib-nixio=y\nCONFIG_PACKAGE_luci-mod-admin-full=y\nCONFIG_PACKAGE_luci-mod-network=y\nCONFIG_PACKAGE_luci-mod-status=y\nCONFIG_PACKAGE_luci-mod-system=y\nCONFIG_PACKAGE_luci-proto-ipv6=y\nCONFIG_PACKAGE_luci-proto-ppp=y\nCONFIG_PACKAGE_luci-theme-bootstrap=y' .config

make defconfig
cat .config
