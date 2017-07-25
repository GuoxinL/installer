#!/usr/bin/env bash

############################################################

#         name : Install MongoDB

#         author : liugx@bjnangle.com

############################################################

source ./utils/service-utils.sh

# 验证权限
check_permission
# 验证系统
check_system

# 验证是否安装Java8
version_info=`java -version`
version_eq='java version "1.8.0'
result=$(echo $version_info | grep "${version_eq}")
if  [[ "$result" != "" ]] ; then
    echo "Java Runtime exists ${version_eq}\""
    exit 0
fi
