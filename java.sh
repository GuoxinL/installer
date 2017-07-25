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
# From http://www.webupd8.org/2014/03/how-to-install-oracle-java-8-in-debian.html
#
# You need to run this script as root
#

# su -
echo "INSTALLING JAVA 8 AS USER `whoami` "

echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list

# Accept license non-iteractive
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
apt-get update
apt-get install -y oracle-java8-installer

# Make sure Java 8 becomes default java
apt-get install -y oracle-java8-set-default

# exit