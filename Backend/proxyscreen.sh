##################################################################################
##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report errors: https://github.com/Beags/ServerSetup/issues   ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "
   ▄████████    ▄████████    ▄████████  ▄█    █▄     ▄████████    ▄████████         ▄████████    ▄████████ ███    █▄      ███        ▄███████▄ 
  ███    ███   ███    ███   ███    ███ ███    ███   ███    ███   ███    ███        ███    ███   ███    ███ ███    ███ ▀█████████▄   ███    ███ 
  ███    █▀    ███    █▀    ███    ███ ███    ███   ███    █▀    ███    ███        ███    █▀    ███    █▀  ███    ███    ▀███▀▀██   ███    ███ 
  ███         ▄███▄▄▄      ▄███▄▄▄▄██▀ ███    ███  ▄███▄▄▄      ▄███▄▄▄▄██▀        ███         ▄███▄▄▄     ███    ███     ███   ▀   ███    ███ 
▀███████████ ▀▀███▀▀▀     ▀▀███▀▀▀▀▀   ███    ███ ▀▀███▀▀▀     ▀▀███▀▀▀▀▀        ▀███████████ ▀▀███▀▀▀     ███    ███     ███     ▀█████████▀  
         ███   ███    █▄  ▀███████████ ███    ███   ███    █▄  ▀███████████               ███   ███    █▄  ███    ███     ███       ███        
   ▄█    ███   ███    ███   ███    ███ ███    ███   ███    ███   ███    ███         ▄█    ███   ███    ███ ███    ███     ███       ███        
 ▄████████▀    ██████████   ███    ███  ▀██████▀    ██████████   ███    ███       ▄████████▀    ██████████ ████████▀     ▄████▀    ▄████▀      
                            ███    ███                           ███    ███                                                                    

Version: 5.5
"
sleep 2
echo "
Written by Buzzy
"
sleep .3
echo "
Report all bugs here: https://github.com/Beags/ServerSetup/issues
"
sleep .2
PS3='Choose your linux distro: '
options=("Debian" "Ubuntu" "Centos" )
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            cd ~
            mkdir Proxy
            cd Proxy
            wget https://buzzzy.co/ServerSetup/Global/restart.sh
            cp -R ~/Jars/server.jar ~/Proxy/
            wget https://buzzzy.co/Hub/serversetup/startscripts/start.sh
            wget https://buzzzy.co/Hub/serversetup/files/eula.txt
            chmod 770 ./start.sh
            screen -dmS Proxy sh
            screen -S Proxy -X stuff "./start.sh
            "
            echo "Your server is now running, to access console do screen -x Proxy , the files are located ~/Proxy/, if you ever need to restart it, go into server folder and run script restart.sh!"
            sleep 1
            ;;
         "Ubuntu")
            cd ~
            mkdir Proxy
            cd Proxy
            wget https://buzzzy.co/ServerSetup/Global/restart.sh
            cp -R ~/Jars/server.jar ~/Proxy/
            wget https://buzzzy.co/Hub/serversetup/startscripts/start.sh
            wget https://buzzzy.co/Hub/serversetup/files/eula.txt
            chmod 770 ./start.sh
            screen -d -m -t Proxy sh start.sh
            echo "Your server is now running, to access console do screen -x Proxy , the files are located ~/Proxy/, if you ever need to restart it, go into server folder and run script restart.sh!"
            sleep 1
            ;;
         "Centos")
            cd ~
            mkdir Proxy
            cd Proxy
            wget https://buzzzy.co/ServerSetup/Global/restart.sh
            cp -R ~/Jars/server.jar ~/Proxy/
            wget https://buzzzy.co/Hub/serversetup/startscripts/start.sh
            wget https://buzzzy.co/Hub/serversetup/files/eula.txt
            chmod 770 ./start.sh
            screen -dmS Proxy sh
            screen -S Proxy -X stuff "./start.sh
            "
            echo "Your server is now running, to access console do screen -x Proxy , the files are located ~/Proxy/, if you ever need to restart it, go into server folder and run script restart.sh!"
            sleep 1
            ;;
        *) echo invalid option;;
    esac
    done