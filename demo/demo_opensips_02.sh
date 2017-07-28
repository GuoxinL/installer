#!/usr/bin/env bash
# https://gist.github.com/howethomas/336911
sudo apt-get install perl libdbi-perl libdbd-mysql-perl libdbd-pg-perl libfrontier-rpc-perl libterm-readline-gnu-perl libberkeleydb-perl gcc bison flex make
mkdir src
cd src/
wget http://opensips.org/pub/opensips/latest/src/opensips-1.6.2-notls_src.tar.gz
tar zxvf opensips-1.6.2-notls_src.tar.gz
cd opensips-1.6.2-notls/
make all include_modules="db_mysql" modules
sudo apt-get install mysql-server
sudo make install include_modules="db_mysql" modules
sudo bash
cd packaging/debian
cp opensips.default /etc/default/opensips
cp opensips.init /etc/init.d/opensips
vi /etc/default/opensips
vi /etc/init.d/opensips
chmod +x /etc/init.d/opensips
adduser opensips
mkdir /var/run/opensips
vi /usr/local/etc/opensips/opensipsctlrc
opensipsdbctl create
opensipsdbctl create
mysql
/etc/init.d/opensips start
tail /var/log/messages

opensipsctl moni
