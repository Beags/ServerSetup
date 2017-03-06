##################################################################################
##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                        ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "Server Setup 3.0 by Buzzzy"
sleep .6
echo "Lilypad Installer"
echo "YOU MUST HAVE BASICS INSTALLED OR ELSE THIS WILL NOT WORK!!!!"
echo "Please note this only is for 64bit based servers!"
echo "Most servers are that, but if you are not sure contact your host!"
sleep 1
cd ~
mkdir Proxy
cd Proxy
wget http://ci.lilypadmc.org/job/Go-Server-Proxy/lastSuccessfulBuild/artifact/target/proxy-linux-amd64
cd ..
mkdir Connect
cd Connect
wget http://ci.lilypadmc.org/job/Go-Server-Connect/lastSuccessfulBuild/artifact/target/connect-linux-amd64
cd ..
cd ~/ServerSetup/Scripts/
chmod 770 lilyscreen.sh
./lillyscreen.sh
