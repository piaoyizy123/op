#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

rm -rf package/feeds/luci/luci-app-passwall/
rm -rf feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box,chinadns-ng}
git clone https://github.com/kenzok8/small package/helloworld
sed -i 's/api.is_finded("fw3")/api.is_finded("fw30")/g' package/helloworld/luci-app-passwall/luasrc/model/cbi/passwall/client/other.lua
# Modify default IP
sed -i 's/192.168.1.1/10.10.10.6/g' package/base-files/files/bin/config_generate
