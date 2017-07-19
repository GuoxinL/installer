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