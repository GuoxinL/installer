#!/usr/bin/env bash

############################################################

#         name : Verification System

#         author : liugx@bjnangle.com

############################################################

#    退出码（exit status，或exit code）的约定：
#    0表示成功（Zero - Success）
#    非0表示失败（Non-Zero  - Failure）
#    2表示用法不当（Incorrect Usage）
#    127表示命令没有找到（Command Not Found）
#    126表示不是可执行的（Not an executable）
#    >=128 信号产生

sys_version=`cat /etc/issue`

if [[ $sys_version =~ 'Ubuntu' ]]
then
    echo "System verification success!!"
else
    echo "Use Ubuntu 16.04.2 LTS to run this Shell Script!"
    exit 2
fi