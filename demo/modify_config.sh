#!/usr/bin/env bash

source ../utils/smelly_and_long.sh
source ../utils/service-utils.sh


addrs=`/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"`
modify_config "/usr/local/etc/opensips/opensips.cfg" "CUSTOMIZE" "${OPENSIPS_CONFIG_IP_START}${addrs}${OPENSIPS_CONFIG_IP_END}"
