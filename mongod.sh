#!/usr/bin/env bash

############################################################

#         name : Install MongoDB

#         author : liugx@bjnangle.com

############################################################
*
source utils/service-utils.sh
source utils/smelly_and_long.sh
#${varible##*string} 从左向右截取最后一个string后的字符串
#${varible#*string}从左向右截取第一个string后的字符串
#${varible%%string*}从右向左截取最后一个string后的字符串
#${varible%string*}从右向左截取第一个string后的字符串
#“*”只是一个通配符可以不要

function create_mongod_config {
    echo -e "${MONGODB_CONFIG}" > /soft/$1/conf/mongod.conf
}

function append_mongod_config {
    echo -e "${MONGODB_CONFIG_APPEND}" >> /soft/$1/conf/mongod.conf
}

function genernate_mongo_user_conf_js {
    echo -e "$MONGODB_CONFIG_CREATE_USER_ADMIN" > /tmp/create_user_admin.js
    echo -e "$MONGODB_CONFIG_CREATE_USER_BIRDNEST" > /tmp/create_user_birdnest.js
    echo -e "$MONGODB_CHECK_USER_BIRDNEST_LOGIN" > /tmp/check_user_birdnest_login.js
}

# 验证权限
check_permission
# 验证系统
check_system
# 文件名称
file_name=`get_file_name`

# 验证 mongod 是否运行
check_is_active ${file_name}
if  [ $? -eq 0 ] ; then
    echo "Mongod runing, don't need install"
    exit 0
fi

# 定义安装包相关信息
package_distory="./package/"
package_file="mongodb-linux-x86_64-ubuntu1604-3.4.4.tgz"
package_url="https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-3.4.4.tgz"

# 检查安装包是否存在
check_package ${package_file} ${package_distory} ${package_url}

# 解压
tar -xf ${package_distory}${package_file} -C /soft/

# 配置mongo
mkdir /soft/${package_file%.*}/conf
mkdir /soft/${package_file%.*}/db
mkdir /soft/${package_file%.*}/log

# 创建mongo配置文件
create_mongod_config ${package_file%.*}

# 设置为服务
set_application_as_service ${file_name} "$MONGODB_SERVICE_CONF"

# 检查运行状态
check_is_active_over ${file_name}
if  [ $? -eq 1 ] ; then
    exit 1
fi

# 生成数据库配置文件
genernate_mongo_user_conf_js

# 导入配置文件
/soft/${package_file%.*}/bin/mongo localhost:27117 /tmp/create_user_admin.js
if  [ $? -ne 0 ] ; then
    echo "Create user admin fail!!!"
    exit 1
fi
/soft/${package_file%.*}/bin/mongo localhost:27117 /tmp/create_user_birdnest.js
if  [ $? -ne 0 ] ; then
    echo "Create user birdnest fail!!!"
    exit 1
fi

append_mongod_config ${package_file%.*}

systemctl restart ${file_name}

# mongo 命令是交互式的命令，不符合脚本中的情景所以使用 check_user_birdnest_login.js 来验证登录
# /soft/${package_file%.*}/bin/mongo localhost:27117/birdnest -u yjh -p yjh123456790
#
#if [[ $? -eq 0 ]]; then
#    echo "Mongo login success."
#else
#    echo "[Error]Mongo login fail, Configuration file import fail or configuration error"
#fi

# 验证登录
/soft/${package_file%.*}/bin/mongo localhost:27117 /tmp/check_user_birdnest_login.js
if  [ $? -ne 0 ] ; then
    echo "[Error]Mongo login fail, Configuration file import fail or configuration error"
    exit 1
fi
echo "Mongo login success."
# 检查是否安装成功
check_is_active_over ${file_name}
