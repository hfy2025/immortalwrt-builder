#!/bin/bash

# DIY 脚本第二部分 - 编译后执行

echo "========== DIY Part 2 Start =========="

# 创建版本信息
BUILD_DATE=$(date +%Y%m%d-%H%M)
echo "Build Date: $BUILD_DATE" > bin/targets/x86/64/build-info.txt
echo "Luci Version: $LUCI_VERSION" >> bin/targets/x86/64/build-info.txt
echo "Kernel Version: $KERNEL_VERSION" >> bin/targets/x86/64/build-info.txt
echo "Docker Enabled: $INSTALL_DOCKER" >> bin/targets/x86/64/build-info.txt

# 重命名固件
cd bin/targets/x86/64
for img in $(ls *.img.gz); do
    new_name="immortalwrt-x86-64-custom-${BUILD_DATE}-docker-${INSTALL_DOCKER}.img.gz"
    mv $img $new_name
done

echo "========== DIY Part 2 Complete =========="
