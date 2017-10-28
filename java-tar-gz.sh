#!/usr/bin/env bash

############################################################

#         name : Install MongoDB

#         author : lgx31@sina.cn

############################################################

source ./utils/service-utils.sh

# 验证权限
check_permission
# 验证系统
check_system
# 文件名称
file_name=`get_file_name`

# 验证是否安装Java8
version_info=`java -version`
version_eq='java version "1.8.0'
result=$(echo $version_info | grep "${version_eq}")
if  [[ "$result" != "" ]] ; then
    echo "Java Runtime exists ${version_eq}\""
    exit 0
fi

# 定义安装包相关信息
package_distory="./package/"
package_file="jdk1.8.0_131.tar.gz"
file_exists=`find . -name ${package_file}`

if [[ -ne $file_exists ]]; then
    echo "The installation package does not exist"
    exit 2
fi

# 解压
tar -xf ${package_distory}${package_file} -C /soft/

echo -e "export JAVA_HOME=${package_file%%.tar.gz*}\nexport CLASSPATH=$JAVA_HOME/bin\nexport PATH=.:$JAVA_HOME/bin:$PATH\n" >> /etc/profile
echo -e "source /etc/profile" >> ~/.bashrc

reboot