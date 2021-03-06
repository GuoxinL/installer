#!/usr/bin/env bash

############################################################

#         name : System initialization

#         author : lgx31@sina.cn

############################################################

source ./utils/service-utils.sh
source ./utils/smelly_and_long.sh
# 验证权限
check_permission
# 验证系统
check_system
# 文件名称
file_name=`get_file_name`

# Use mkdir create system need directory
mkdir /soft/ ~/download/

# 修改编码配置文件
echo -e "${LANGUAGE}" > /etc/default/locale

# 安装rxtx依赖包
apt-get install librxtx-java
cp /usr/lib/jni/librxtxParallel.so /lib64/librxtxParallel.so
cp /usr/lib/jni/librxtxSerial.so /lib64/librxtxSerial.so

modify_config "/etc/ssh/sshd_config" "without-password" "yes"