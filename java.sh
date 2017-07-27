#!/usr/bin/env bash

############################################################

#         name : Install MongoDB

#         author : liugx@bjnangle.com

############################################################
#
source ./utils/service-utils.sh

# 验证权限
check_permission
# 验证系统
check_system
# 文件名称
file_name=`get_file_name`

# From http://www.webupd8.org/2014/03/how-to-install-oracle-java-8-in-debian.html
#
# You need to run this script as root
#

# su -
echo "INSTALLING JAVA 8 AS USER `whoami` "

add-apt-repository ppa:webupd8team/java
apt-get update
# Accept license non-iteractive
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
apt-get install -y oracle-java8-installer

# Make sure Java 8 becomes default java
apt-get install -y oracle-java8-set-default

# exit