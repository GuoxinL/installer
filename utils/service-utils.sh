#!/usr/bin/env bash

############################################################

#         name : Install Neo4j

#         author : liugx@bjnangle.com

############################################################

source ./smelly_and_long.sh
# check is active over
# params
#   $1 application_name
# return
#   0 install success
#   1 install failure
function check_is_active_over {
    application_name=$1
    check_is_active ${application_name}
    if  [ $? -eq 0 ] ; then
        echo "${application_name} install success"
        return 0
    else
        echo "${application_name} install failure, Please use 'systemctl status ${application_name}.service'"
        return 1
    fi
}

# check package exists
# params
#   $1 package_file
#   $2 package_distory
#   $3 package_url
# return
#
function check_package {
    package_file=$1
    package_distory=$2
    package_url=$3
    file_exists=`find . -name ${package_file}`

    if [[ -e $file_exists ]]; then
        echo "File already exist, You don't need to download it"
    else
        if [[ ! -e ${package_distory} ]]; then
           mkdir package
        fi
        echo "Downloading..."
        wget ${package_url} -O ${package_distory}${package_file}
        echo $?
        if [ 0 -eq $? ]; then
            echo "Download successfully!"
        else
            echo "Download fail!"
        fi
    fi
}

# Set Application as a service
# params
#   $1 application_name
#   $2 application_conf
# return
#
function set_application_as_service {
    application_name=$1
    application_conf=$2
    # > 覆盖
    # >> 追加
    echo -e $application_conf > /etc/systemd/system/${application_name}.service

    systemctl daemon-reload
    systemctl enable ${application_name}.service
    systemctl start  ${application_name}.service
}

function set_neo4j_password {
    curl -H "Content-Type: application/json" -X POST -d '{"password":"111111"}' -u neo4j:neo4j "http://127.0.0.1:7474/user/neo4j/password"
}


#    退出码（exit status，或exit code）的约定：
#    0表示成功（Zero - Success）
#    非0表示失败（Non-Zero  - Failure）
#    2表示用法不当（Incorrect Usage）
#    127表示命令没有找到（Command Not Found）
#    126表示不是可执行的（Not an executable）
#    >=128 信号产生

function check_system {
    sys_version=`cat /etc/issue`

    if [[ $sys_version =~ 'Ubuntu' ]]
    then
        echo "System verification success!!"
    else
        echo "Use Ubuntu 16.04.2 LTS to run this Shell Script!"
        exit 2
    fi
}

#*    0 的为"真"( true )
#* 非 1 的为"假"( false )
function check_is_active {
    is_active=`systemctl is-active $1.service`

    if [[ $is_active == active ]]; then
        return 0
    else
        return 1
    fi
}

# Modify Configuration file
# Params
#   $1 Configuration file path
#   $2 before modification line
#   $3 after modification line
function modify_opensips_config {
    config_file_path=$1
    before=$2
    after=$3
    mv ${config_file_path} ${config_file_path}.bak
    while read line
    do
        result=$(echo $line | grep ${before})
        if  [[ "$result" != "" ]] ; then
            echo ${after} >> ${config_file_path}
        else
            echo $line >> ${config_file_path}
        fi
    done < ${config_file_path}.bak
}
