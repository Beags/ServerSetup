# Server Setup


Automated Server Setup is a script that is designed to make the installation of a linux server easier for the average user. This script takes basic tasks of a System Administrator and automates them so that even the most tech illiterate server owner or administrator can use it. It has been updated regularly since its original release in early 2017. It has grown from a very basic script to one that does not only install minecraft servers; but installs websites, and much much more! It currently supports installing all of the major server softwares from Vanilla to Forge, Spigot to Sponge, and versions up to 1.11.2. If you would like a version added feel free to post it here. If this script helps you, please leave a review + a rating or maybe consider donating to me. 




# Currently Supported Distros
Debian
Ubuntu
CentOS


If you would like your distro supported make an issue in the issues section

# Current Versions

> Server Softwares
*   Spigot
* Vanilla
* PaperSpigot
* Forge
*  Cauldron
* Sponge
* CraftBukkit
* Torch
* Hose
* TacoSpigot

> Proxies
* Bungeecord
* Waterfall
* LilyPad
* HexaCord
* Travertine

>  Websoftware
* Wordpress
* Namelessmc
* Mybb
* Xenforo**

> Miscellaneous

* Screen
* wget
* apache2
* git
* java
* php
* mysql


** Does not provide a license for this software, you will need to download and upload it yourself.


All of the Server and Proxy softwares support a variety of minecraft versions, most of them at least 1.7.10+ if offered. Feel free to request a certain version.


If the software you want to use is not listed, feel free to request it here.
Please do not come to me for support for the server versions. Secondly, please only go to Spigot for Spigot and Bungeecord errors. Please report errors for other softwares to their respective authors.




# Installation

```sh
 1. Download the Server Setup Software
 2. upload it via ftp OR use the remote feature
```
# Remote Setup currently supports:

* Windows 10 (No other windows version supported)

* Linux

* MacOS


```sh
3. Unzip the serversetup into your Downloads folder
4. Make sure it unziped into your downloads folder and it shows serversetup5.0.sh and the folder Remote
5. Open remote folder.
```
# WINDOWS ONLY
```sh
6. Click install.bat
7. Follow all prompts on screen, your computer will restart and when it does a cmd window should appear, follow prompts and then it will open the remote script. Follow all prompts with the remote script to install your software.
8. You should now be able to use your software if not please post a report here.
```
# NON WINDOWS
```sh
6. unzip the serversetup,zip into your downloads folder
7.open a terminal window and navigate to wherever you unziped the files and enter the Remote directory.
8. run the following commands:
chmod 770 remoteglobal.sh
./remoteglobal.sh
9. Follow prompts on screen to install the software.

# NON-REMOTE
```sh
3. After uploading it to your server, login to ssh as root and run the following commands:
```
# Debian/Ubuntu
```sh
apt-get install unzip
unzip serversetup.zip
chmod 770 ./serversetup5.0.sh
./serversetup5.0.sh
```

# CentOS
```sh
yum install unzip
unzip serversetup.zip
chmod 770 ./serversetup5.0.sh
./serversetup5.0.sh
```

# Support
I do NOT provide support in the review or the discussion section. If you have any issue please post about it here.




Thanks for reading about the thread, if this resource helps you please leave a like and or a review; it really motivates me to keep working on this.



