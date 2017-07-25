#!/usr/bin/env bash

source ../utils/smelly_and_long.sh
addrs=`/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"`
config_path="/usr/local/etc/opensips/opensips.cfg"
mv ${config_path} ${config_path}.bak
while read line
do
    result=$(echo $line | grep "${opensips_config_ip_end}")
    if  [[ "$result" == "" ]] ; then
        echo ${opensips_config_ip_start}${addrs}${opensips_config_ip_end} >> $config_path
        exit 0
    else
        echo $line >> $config_path
    fi
done < ${config_path}.bak
