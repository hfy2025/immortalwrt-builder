#!/bin/bash
# 克隆 ImmortalWrt 源码
git clone -b $REPO_BRANCH $REPO_URL openwrt
cd openwrt

# 修改默认管理 IP 地址为 192.168.6.1
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# 更新并安装官方 feeds
./scripts/feeds update -a
./scripts/feeds install -a
