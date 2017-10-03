#!/bin/bash

## Update all packages
yum -y update

## Password rquirements
sed -i '/PASS_MAX_DAYS\t99999/ c\PASS_MAX_DAYS\t120' /etc/login.defs
sed -i '/PASS_MIN_LTN\t5/ c\PASS_MIN_LEN\t8' /etc/login.defs

## Add developers group
group add developers

## Copy original sudoer file & update for developers group 
cp /etc/sudoers /etc/sudoers.origional
cp /etc/sudoers /etc/sudoers.new
echo -e "\n\n## Add developers group" >> /etc/sudoers.new
echo "Cmnd_Alias DEVELOPERTOOLS = /sbin/service, /sbin/chkconfig, /usr/bin/systemctl start, /usr/bin/systemctl stop, /usr/bin/systemctl reload, /usr/bin/systemctl restart, /usr/bin/systemctl status, /usr/bin/systemctl enable, /usr/bin/systemctl disable  " >> /etc/sudoers.new
echo "%developers ALL=(ALL) SERVICES, DEVELOPERTOOLS" >> /etc/sudoers.new


## No USB
echo "install usb-storage /bin/false" > /etc/modprobe.d/usb-storage.conf

## Enable SHA512 instead of using MD5
authconfig --passalgo=sha512 —update

## Install PIP
yum -y install python-pip

## Install sudo
yum -y install sudo
