#!/usr/bin/env bash



source ./utils/service-utils.sh
source ./utils/smelly_and_long.sh
# 验证权限
check_permission
# 验证系统
check_system

# Use mkdir create system need directory
mkdir /soft/ ~/download/

# 修改编码配置文件
echo -e "${LANGUAGE}" > /etc/default/locale

# 安装rxtx依赖包
apt-get install librxtx-java
cp /usr/lib/jni/librxtxParallel.so /lib64/librxtxParallel.so
cp /usr/lib/jni/librxtxSerial.so /lib64/librxtxSerial.so

modify_opensips_config "/etc/ssh/sshd_config" "PermitRootLogin prohibit-password" "PermitRootLogin yes"