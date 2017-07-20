#!/usr/bin/env bash

############################################################

#         name : Install Neo4j

#         author : liugx@bjnangle.com

############################################################

source ./utils.sh

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
    echo $application_conf
    # > 覆盖
    # >> 追加
    echo -e $application_conf > /etc/systemd/system/${application_name}.service

    systemctl daemon-reload
    systemctl enable ${application_name}.service
    systemctl start  ${application_name}.service
}