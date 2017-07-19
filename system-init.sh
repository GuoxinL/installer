#!/usr/bin/env bash

sys_version = `cat /etc/issue`

if cat /etc/issue | grep "Ubuntu 16.04.2 LTS" == ""; then
    echo "Use Ubuntu 16.04.2 LTS to run this Shell Script!"
#    退出码（exit status，或exit code）的约定：
#    0表示成功（Zero - Success）
#    非0表示失败（Non-Zero  - Failure）
#    2表示用法不当（Incorrect Usage）
#    127表示命令没有找到（Command Not Found）
#    126表示不是可执行的（Not an executable）
#    >=128 信号产生
    exit 2
fi
# Use mkdir create system need directory
mkdir /soft/ ~/download/
# 修改编码配置文件

# 安装rxtx依赖包
function librxtx{
    apt-get install librxtx-java make gcc g++
    cp /usr/lib/jni/librxtxParallel.so /lib64/librxtxParallel.so
    cp /usr/lib/jni/librxtxSerial.so /lib64/librxtxSerial.so
}

librxtx