# 编译后自定义脚本
#!/bin/bash

# DIY 脚本第二部分 - 编译后执行

echo "========== DIY Part 2 Start =========="

# 修改管理 IP 和主机名
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/X86-Router/g' package/base-files/files/bin/config_generate

echo "========== DIY Part 2 Complete =========="
