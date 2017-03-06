##################################################################################
##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                        ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "Server Setup 3.0 by Buzzzy"
sleep .2
PS3='Choose your linux distro: '
options=("Debian" "Ubuntu" "Centos" )
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            cd ~/Proxy
            mv ~/ServerSetup/Scripts/lilyrestart.sh ~
            chmod +x proxy-linux-amd64
            screen -dmS Proxy sh
            screen -S Proxy -X stuff "./proxy-linux-amd64
            "
            cd ..
            cd ~/Connect
            chmod +x connect-linux-amd64
            screen -dmS Connect sh
            screen -S Connect -X stuff "./connect-linux-amd64
            "
            echo "Lilypad has now been installed, it is not setup so you will need to do it yourself, if you would like it setup automatically buy the upgrade! It setups bungee, waterfall, and lilypad networks!"
            sleep 2
            ;;
         "Ubuntu")
            cd ~/Proxy
            mv ~/ServerSetup/Scripts/lilyrestart.sh ~
            chmod +x proxy-linux-amd64
            screen -d -m -t proxy sh ./proxy-linux-amd64
            cd ..
            cd ~/Connect
            chmod +x connect-linux-amd64
            screen -dmS Connect sh
            screen -d -m -t connect sh ./connect-linux-amd64
            echo "Lilypad has now been installed, it is not setup so you will need to do it yourself, if you would like it setup automatically buy the upgrade! It setups bungee, waterfall, and lilypad networks!"
            sleep 2
            ;;
         "Centos")
            cd ~/Proxy
            mv ~/ServerSetup/Scripts/lilyrestart.sh ~
            chmod +x proxy-linux-amd64
            screen -dmS Proxy sh
            screen -S Proxy -X stuff "./proxy-linux-amd64
            "
            cd ..
            cd ~/Connect
            chmod +x connect-linux-amd64
            screen -dmS Connect sh
            screen -S Connect -X stuff "./connect-linux-amd64
            "
            echo "Lilypad has now been installed, it is not setup so you will need to do it yourself, if you would like it setup automatically buy the upgrade! It setups bungee, waterfall, and lilypad networks!"
            sleep 2
            ;;
        *) echo invalid option;;
    esac
    done