#!/bin/bash

# this here checks and sees if the user is runing this with sudo 

FILE="/tmp/out.$$"
GREP="/bin/grep"

if ["$(id -u)" != "0"]; then
        printf "This script must be ran as root"
        printf "using sudo"
        exit 1

fi

#....

# this here says that i am not resposible for you runing this script run this at your own risk 

# and asks them if they accept the risks by saying yes or no 

printf "run this script at your own risk\n"

printf "I am no responsible for what happens to your system\n"

printf "when you run this script\n"

while true;do 
        read -p "Do you want to run this script? " yn
        case $yn in
                [Yy]*)make install; break;;
                [Nn]*)exit;;
                *)printf "please answer yes or no.";;
        esac
done

egrep -c '(vmx|svm)' /proc/cpuinfo

systemctl status libvirtd.service

virsh net-start default

virsh net-autostart default

virsh net-list --all

adduser $USERNAME libvirt

adduser $USERNAME libvirt-qemu 
