#!/bin/sh

# Author:   Marius Guobys
# Company:  Kolmisoft
# Year:     2012
# About: Script is for Installing Opensips to support MOR Billing in load balancing SIP traffic


echo -e "Starting Opensips Installation"
#getting sources from opensips.org and kolmisoft.com
#installing
install_opensips()
{
        echo "Installing dependencies"
        yum -y install gcc gcc-c++ bison flex make openssl zlib-devel openssl-devel mysql mysql-devel subversion pcre-devel mysql-server lynx wget ncurses-devel mc crontabs iptables
        cd /usr/src/
        echo "Downloading and installing Opensips"
        wget http://opensips.org/pub/opensips/1.9.0/src/opensips-1.9.0_src.tar.gz
        tar xvfz opensips-1.9.0_src.tar.gz
	cd /usr/src/opensips-1.9.0-tls/
	make all include_modules="db_mysql"
	make include_modules="db_mysql" prefix="/usr/local" install
}
#copy configs depending on the architecture
copy_configs()
{
    echo "Copying Opensips configs"
	_UNAME=`uname -a`;
    _IS_64_BIT=`echo "$_UNAME"  | grep x86_64`


    if [ -n "$_IS_64_BIT" ];  then
        cp -fr /usr/src/mor_proxy/64bit/default/opensips /etc/default/
        cp -fr /usr/src/mor_proxy/64bit/init/opensips /etc/init.d/
        chmod +x /etc/init.d/opensips
        cp -fr /usr/src/mor_proxy/configs/opensips.cfg /usr/local/etc/opensips/
        cp -fr /usr/src/mor_proxy/configs/mor.conf /usr/local/etc/opensips/
        cp -fr /usr/src/mor_proxy/configs/opensipsctlrc /usr/local/etc/opensips/
        cp -fr /usr/src/mor_proxy/configs/proxy /etc/logrotate.d/
    else
        cp -fr /usr/src/mor_proxy/32bit/default/opensips /etc/default/
        cp -fr /usr/src/mor_proxy/32bit/init/opensips /etc/init.d/
        chmod +x /etc/init.d/opensips
        cp -fr /usr/src/mor_proxy/configs/opensips.cfg /usr/local/etc/opensips/
        cp -fr /usr/src/mor_proxy/configs/opensipsctlrc /usr/local/etc/opensips/
        cp -fr /usr/src/mor_proxy/configs/mor.conf /usr/local/etc/opensips/
        cp -fr /usr/src/mor_proxy/configs/proxy /etc/logrotate.d/
    fi
}
# make a crontab to update the address cache
crontab_make()
{ 
    echo "Adding crontabs for device updates"
    rm -rf /tmp/crontab.tmp
    crontab -l >/tmp/crontab.tmp
    echo -e "*/5 * * * * /sbin/service opensips status && /usr/local/sbin/opensipsctl address reload\n*/2 * * * * /usr/local/etc/opensips/opensips_device_status\n" >>/tmp/crontab.tmp
    /usr/bin/crontab /tmp/crontab.tmp
}
# make an opensips log
log_make()
{
    echo "Adding logging for OpenSips"
    mkdir /var/log/proxy
    cd /var/log/proxy
    touch opensips.log
    cd /etc
    echo "local6.* /var/log/proxy/opensips.log" >> rsyslog.conf
    /etc/init.d/rsyslog restart
}
selinux_disable()
{
    echo 0 > /selinux/enforce
}
#Protects from "friendly scanners"
iptables_install()
{
#Backup first just in case
iptables-save > /home/opensips_backups/iptables_backup.txt
#Add block for bot attacks
iptables -I INPUT -p udp -m udp --dport 5060 -m string --string "friendly-scanner" --algo bm -j DROP
/etc/init.d/iptables save
}

device_script()
{
    cd /usr/src/mor_proxy/scripts/
    ./install.sh
    cp -fr /usr/src/mor_proxy/scripts/opensips_device_status /usr/local/etc/opensips/
}

fail2ban_install()
{
yum -y install fail2ban
cp -fr /usr/src/mor_proxy/fail2ban/fail2ban.conf /etc/fail2ban/
cp -fr /usr/src/mor_proxy/fail2ban/jail.conf /etc/fail2ban/
cp -fr /usr/src/mor_proxy/fail2ban/opensips.conf /etc/fail2ban/filter.d/
cp -fr /usr/src/mor_proxy/fail2ban/opensips-cli.conf /etc/fail2ban/filter.d/
/etc/init.d/fail2ban restart
}

install_opensips
copy_configs
crontab_make
chkconfig opensips --add
chkconfig opensips on
chkconfig httpd --add
chkconfig httpd on
chkconfig monit --add
chkconfig monit on
chkconfig fail2ban --add
chkconfig fail2ban on
service crond restart
log_make
selinux_disable
iptables_install
device_script

# Install Monit and epel repo
sh /usr/src/mor_proxy/monitoring_install.sh

fail2ban_install

        echo -e  "\n\n\n OPENSIPS 1.8 installed with support for MOR Billing \n\n"
        echo -e ">>>>> Follow the manual to complete the installation <<<<<<<<"



