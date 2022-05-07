hey everyone this is just some extra info i decided to put into this .txt file

1. first when you run the user.sh script it copies the .bashrc.bak to your home directoy 

but it changes it to your username what ever that maybe for example if your username is 

doc then it will change it to doc 

also if you want to have my bashrc instead of your own then you need to do this 

rm .bashrc 

before runing this command make sure to backup your existing bashrc 

incase something goes wrong 

that command will remove your exsisting bashrc

so make sure you backup your existing bashrc before runing that command 

then rename the bashrc that go changed to your username in my case doc change doc to .bashrc 

by runing this command 

mv doc .bashrc 

that will rename it to .bashrc 

then source it by typing 

source .bashrc 

this wil source my bashrc and give you my configurations i use in my bashrc 

2. Secondly

after you run pkg.sh and install qemu/kvm you might want to run these commands because i do not include them in the
script 

and you might want to run these commands 

egrep -c '(vmx|svm)' /proc/cpuinfo

sudo systemctl status libvirtd.service

virsh net-start default

virsh net-autostart default

virsh net-list --all

sudo adduser $USERNAME libvirt

sudo adduser $USERNAME libvirt-qemu 

and then you are done 


