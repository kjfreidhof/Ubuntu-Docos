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
cp .bashrc.bak ~/$USERNAME


# this makes a .icons directory and .themes directory 
# in my home directory
mkdir -p /home/"$USERNAME"/.icons
mkdir -p /home/"$USERNAME"/.themes 

# This here extracts each icon them and copies them to the .icons directory in my home directory 

tar -xvf 01-McMojave-circle.tar.xz

cp -r McMojave-circle ~/.icons
cp -r McMojave-circle-dark ~/,icons 

tar -xvf candy-icons.tar.xz

cp -r candy-icons ~/.icons

unzip Dracula.zip 

cp -r Dracula ~/.icons 

tar -xvf Mkos-Big-Sur.tar.xz 

cp -r Mkos-Big-Sur ~/.icons 

cp -r Mkos-Big-Sur-Night ~/.icons 

cp -r Mkos-Big-Sur-Panel-white ~/.icons

tar -xvf  papirus-icon-theme-20220302.tar.gz

cp -r Papirus ~/.icons

cp -r Papirus-Dark ~/.icons

cp -r Papirus-light ~/.icons 

# This here extracts and copies my themes over to my .themes directory in my home directory 

unzip gtk-master.zip

cp -r gtk-master ~/.themes 

unzip Gruvbox-Dark.zip 

cp -r Gruvbox-Dark ~/.themes

tar -xvf Mojave-dark.tar.xz

cp -r Mojave-dark ~/.themes 

unzip Ubuntu-Monterey.zip

cp -r Ubuntu-Monterey ~/.themes 

tar -xvf Sweet.tar.xz

cp -r Sweet ~/.themes 



exit 
