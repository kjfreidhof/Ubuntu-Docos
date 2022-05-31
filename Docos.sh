#!/bin/bash 

#unzip nvim.zip  
#unzip neofetch.zip 
#cp -r nvim ~/.config 

#cp -r neofetch ~/.config       
#cp .bashrc.bak ~/$USERNAME


#mkdir -p /home/"$USERNAME"/.icons 
#mkdir -p /home/"$USERNAME"/.themes

#tar -xvf 01-McMojave-circle.tar.xz 

#cp -r McMojave-circle ~/.icons
#cp -r McMojave-circle-dark ~/,icons

#tar -xvf candy-icons.tar.xz

#cp -r candy-icons ~/.icons 

#unzip Dracula.zip

#cp -r Dracula ~/.icons 


#tar -xvf Mkos-Big-Sur.tar.xz

#cp -r Mkos-Big-Sur ~/.icons

#cp -r Mkos-Big-Sur-Night ~/.icons

#cp -r Mkos-Big-Sur-Panel-white ~/.icons 

#unzip gtk-master.zip 

#cp -r gtk-master ~/.themes 

#unzip Gruvbox-Dark.zip

#cp -r Gruvbox-Dark ~/.themes 

#tar -xvf Mojave-dark.tar.xz

#cp -r Mojave-dark ~/.themes

#unzip Ubuntu-Monterey.zip 

#cp -r Ubuntu-Monterey ~/.themes 

#tar -xvf Sweet.tar.xz

#cp -r Sweet ~/.themes

#snap remove firefox

#cat remove.txt | xargs apt remove -y 

apt update
sleep 3

apt upgrade && apt full-upgrade
sleep 3 

#cat build.txt 
#sleep 3

#cat build.txt | xargs apt install -y 

#add-apt-repository ppa:obsproject/obs-studio
#apt update 

#add-apt-repository ppa:kdenlive/kdenlive-stable 
#apt update
#sleep 3 

#while true;do 
       # read -p "Do you want to instal the following packages above? " yn 
       # case $yn in  
             #   [Yy]*)make install; break;; 
             #   [Nn]*)exit;;
             #   *)printf "please answer yes or no.";;
       # esac
# done

echo "Do you want to remove the Desktop environment you are using? [1|2|]"
echo "1, Yes"
echo "2, No"

read -rp "> " CHOICE

if [ $CHOICE = 1 ]; then
apt remove ubuntu-gnome-desktop -y
continue 

elif [ $CHOICE = 2 ]; then 
exit 
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
cat awesome.txt | xargs apt install -y
continue 

elif [$CHOICE = 2]; then 
cat i3.txt | xargs apt install -y 
continue 


elif [ $CHOICE = 1 ]; then 
mkdir -p ~/.config/awesome 
cp rc.lua ~/.config/awesome
continue 

elif [$CHOICE = 2]; then 
unzip i3.zip 
unzip polybar.zip
cp -r polybar ~/.config 
continue 

else 
		continue 

fi



printf "if you install i3 \n"
sleep 5 
printf "then after this script is done \n"
sleep 5
printf "press enter when you boot it up for the first time \n"
sleep 5
printf "copy my config over to the .config directory \n"
sleep 5
printf "to do that press super or windows key and enter do cp -r i3 ~/.config \n"
sleep 5
printf "then after that reload i3 \n"
sleep 5
printf "by doing super or the windows key and shift + r \n"
sleep 5
printf "then you will have my i3 config \n"
sleep 5
printf "i cant copy it over for you in my script \n"
sleep 5
printf "Because when you boot into i3  \n"
sleep 5
printf "and you press enter on the welcome screen \n"
sleep 5
printf "it will over write my config if i copy it over for you in my script\n"
sleep 5
printf "if you installed awesome then you have it easy \n"
sleep 5
printf "you will have my config when you boot into\n"
sleep 5
printf "the awesome window manager and you will be good to go \n"
sleep 5


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








































