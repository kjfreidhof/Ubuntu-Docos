#!/bin/bash 

unzip nvim.zip  
unzip neofetch.zip 
cp -r nvim ~/.config 

cp -r neofetch ~/.config       
cp .bashrc.bak ~/$USERNAME


mkdir -p /home/"$USERNAME"/.icons 
mkdir -p /home/"$USERNAME"/.themes

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

snap remove firefox

cat remove.txt | xargs apt remove -y 

apt update
sleep 3

apt upgrade && apt full-upgrade
sleep 3 

cat build.txt 
sleep 3

cat build.txt | xargs apt install -y 

add-apt-repository ppa:obsproject/obs-studio
apt update 

add-apt-repository ppa:kdenlive/kdenlive-stable 
apt update

cat pkg.txt 
sleep 3 

#while true;do 
       # read -p "Do you want to instal the following packages above? " yn 
       # case $yn in  
             #   [Yy]*)make install; break;; 
             #   [Nn]*)exit;;
             #   *)printf "please answer yes or no.";;
       # esac
# done

cat pkg.txt | xargs apt install -y 

echo "Are you using the normal or minimal install of ubuntu? [1|2|]"
echo "1, Normal install"
echo "2, minimal install"

read -rp "> " CHOICE

if [ $CHOICE = 1 ]; then
apt remove ubuntu-gnome-desktop -y
continue 

elif [ $CHOICE = 2 ]; then 
apt remove vanilla-gnome-desktop 
continue


else

	continue 
fi



echo "Choose the window manager to install? [1|2|]"
echo "1, awesome"
echo "2, i3"

read -rp "> " CHOICE

if [ $CHOICE = 1 ]; then
apt install awesome
continue

elif [ $CHOICE = 2 ]; then
apt install i3
continue

elif [ $CHOICE = 1 ]; then 
cat awesome.txt | xargs apt installl -y
continue 

elif [$CHOICE = 3]; then 
cat i3.txt | xargs apt install -y 
continue 

else 
		continue 

fi 




echo "What web browser do you want? [1|2|3]"
echo "1, firefox"
echo "2, chromium"
echo "3, qutebrowser"

read -rp "> " CHOICE

if [$CHOICE = 1 ]; then 
add-apt-repository ppa:system76/pop -y
continue

elif [ $CHOICE = 2 ]; then 
sudo add-apt-repository ppa:system76/pop -y 
continue 

elif [ $CHOICE = 3 ]; then 
apt install qutebrowser -y 
continue 

elif [ $CHOICE = 1 ]; then
cat firefox.txt | xargs apt install -y 
continue


elif [ $CHOICE = 2 ]; then
cat chromium.txt | xargs apt install -y 
continue 

else 
		continue 

fi 


echo "Do you want to reboot in to your new opreating system? [1|2|]"
echo "1, reboot"
echo "2, Dont reboot"

if [ $CHOICE = 1 ]; then 
reboot 
exit 

elif [ $CHOICE = 2 ]; then  
exit 

else 
		exit

fi 








































