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

tar -xvf  papirus-icon-theme-20220302.tar.gz

cp -r Papirus ~/.icons

cp -r Papirus-Dark ~/.icons

cp -r Papirus-light ~/.icons 

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

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | apt-key add - 

echo "deb http://repository.spotify.com stable non-free" | tee /etc/apt/sources.list.d/spotify.list

apt update 

cat spotify.txt | xargs apt install -y 

add-apt-repository ppa:obsproject/obs-studio
apt update 

add-apt-repository ppa:kdenlive/kdenlive-stable 
apt update

cat pkg.txt 
sleep 3 

while true;do 
        read -p "Do you want to instal the following packages above? " yn 
        case $yn in  
                [Yy]*)make install; break;; 
                [Nn]*)exit;;
                *)printf "please answer yes or no.";;
        esac
done

cat pkg.txt | xargs apt install -y 



echo "Choose the window manager or desktop environment you want to install [1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|]"
echo "1, awesome"
echo "2, dwm"
echo "3, i3"
echo "4, xmonad"
echo "5, bspwm"
echo "6, task-kde-desktop"
echo "7, xfce4"
echo "8, ubuntu-mate-core"
echo "9, openbox"
echo "10, unity"
echo "11, enlightenment"
echo "12, ubuntu-gnome-desktop"
echo "13, task-lxde-desktop"
echo "14, lxqt"
echo "15, vanilla-gnome-desktop"
echo "16, ubuntu-budgie-desktop"

read -rp "> " CHOICE

if [ $CHOICE = 1 ]; then
apt install awesome
exit
elif [ $CHOICE = 2 ]; then 
apt install dwm
exit 

elif [ $CHOICE = 3 ]; then
apt install i3
exit 

elif [ $CHOICE = 4 ]; then 
apt install xmonad
exit 

elif [ $CHOICE = 5 ]; then
apt install bspwm
exit 

elif [ $CHOICE = 6 ]; then
apt install task-kde-desktop
cat kremove.txt | xargs apt remove -y 
exit

elif [ $CHOICE = 7 ]; then
apt install xfce4
cat xremove.txt | xargs apt remove -y  
exit 
elif [ $CHOICE = 8 ]; then
apt install ubuntu-mate-core
cat mremove.txt | xargs apt remove -y 
exit

elif [ $CHOICE = 9 ]; then
apt install openbox 
exit

elif [ $CHOICE = 10 ]; then 
apt install unity
cat uremove.txt | xargs apt remove 
exit

elif [ $CHOICE = 11 ]; then
apt install enlightenment
exit

elif [ $CHOICE = 12 ]; then
apt install ubuntu-gnome-desktop
cat gpkg.txt | xargs apt install -y 

exit

elif [ $CHOICE = 13 ]; then
apt install task-lxde-desktop
exit

elif [ $CHOICE = 14 ]; then 
apt install lxqt
exit

elif [ $CHOICE = 15 ]; then
apt install vanilla-gnome-desktop
cat gpkg | xargs apt install -y 
exit

elif [ $CHOICE = 16 ]; then
apt install ubuntu-budgie-desktop
exit

else


    exit
    reboot

fi


































