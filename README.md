# Linux Setup Instructions
I made this so that when I setup a new Ubuntu 16.04 VM I don't have to remember how I did it

## Prerequisites
Create a new Ubuntu 16.04 VM with bidirectional clipboard and install the VirtualBox Guest Additions iso

Reboot and install the following packages
```
sudo apt install -y i3 compton git feh libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev \
libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev \
libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake tint
```

Restart the VM and login in i3 mode 

Clone this repository 
```
cd
mkdir Git && cd Git
git clone https://github.com/boreycutts/linux-config.git
```

## i3-gaps
Install i3-gaps (and libxcb-xrm-dev) from source
```
cd
mkdir tmp
cd tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install
cd
cd tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
```

## .bashrc
Copy the .bashrc file
```
cp ~/Git/linux-config/.bashrc ~/.bashrc
```

## i3 config
Copy the i3 config 
```
cp ~/Git/linux-config/i3_config ~/.config/i3/config
```

## i3status config
Copy the i3status config
```
mkdir ~/.config/i3status
cp ~/Git/linux-config/i3status_config ~/.config/i3status/config
```

## compton config
Copy the compton config
```
cp ~/Git/linux-config/compton.conf ~/.config/compton.conf
```

## Terminal colors
Open a terminal, click `Edit>Profile Preferences` and navigate to `Colors`
```
Text color: #A6C4D5

Background color: #161616
```

Reboot and you should be good :D