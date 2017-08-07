#!/usr/bin/env bash

############################################################

#         name : Modify the native and IP related parameters

#         author : liugx@bjnangle.com

############################################################

source ./utils/service-utils.sh

addrs=`/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"`

# modify garuda config
modify_config "/etc/systemd/system/garuda.service" "192.168.3.80" "${addrs}"

# modify opensips config
modify_config "/usr/local/etc/opensips/opensips.cfg" "192.168.3.80" "${addrs}"

modify_config "/etc/systemd/system/garuda.service" "192.168.3.80" "${addrs}"
modify_config "/etc/systemd/system/birdnest.service" "192.168.3.80" "${addrs}"