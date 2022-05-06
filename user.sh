#!/bin/bash 

# This here is saying run this script at your own risk 
# i am not responsible for what happens and the user accepts the changes 
# or they dont 

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

# This here unzips my nvim config and my neofetch config
unzip nvim.zip 
unzip neofetch.zip 

# this copies over my nvim and neofetch config to my .config directory in my home directory 

cp -r nvim ~/.config
cp -r neofetch ~/.config 

# This copies my bashrc to my home directory 
cp .bashrc.bak ~/"$USERNAME"


# this makes a .icons directory and .themes directory 
# in my home directory
mkdir -p /home/"$USERNAME"/.icons

mkdir -p /home/"$USERNAME"/.themes 



