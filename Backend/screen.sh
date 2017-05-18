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
sleep 1
PS3='Choose your linux distro: '
options=("Debian" "Ubuntu" "Centos" )
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            cd ~
            mkdir MyServer
            cd MyServer
            wget https://buzzzy.co/ServerSetup/Global/restart.sh
            cp -R ~/Jars/server.jar ~/MyServer/
            wget https://buzzzy.co/Hub/serversetup/startscripts/start.sh
            wget https://buzzzy.co/Hub/serversetup/files/eula.txt
            chmod 770 ./start.sh
            screen -dmS myserver sh
            screen -S myserver -X stuff "./start.sh
            "
            echo "
            Your server is now running, to access console do screen -x myserver , the files are located ~/MyServer/, if you ever need to restart it, go into server folder and run script restart.sh!
            "
            echo "
            If you liked this resource please leave a review on spigot!
            "
            echo "
            To exit this script please press ctrl and c together until you're out of the script
            "
            sleep .6
            ;;
         "Ubuntu")
            cd ~
            mkdir MyServer
            cd MyServer
            wget https://buzzzy.co/ServerSetup/Global/restart.sh
            cp -R ~/Jars/server.jar ~/MyServer/
            wget https://buzzzy.co/Hub/serversetup/startscripts/start.sh
            wget https://buzzzy.co/Hub/serversetup/files/eula.txt
            chmod 770 ./start.sh
            screen -d -m -t myserver sh start.sh
            echo "
            Your server is now running, to access console do screen -x myserver , the files are located ~/MyServer/, if you ever need to restart it, go into server folder and run script restart.sh!
            "
            echo "
            If you liked this resource please leave a review on spigot!
            "
            echo "
            To exit this script please press ctrl and c together until you're out of the script
            "
            sleep .6
            ;;
         "Centos")
            cd ~
            mkdir MyServer
            cd MyServer
            wget https://buzzzy.co/ServerSetup/Global/restart.sh
            cp -R ~/Jars/server.jar ~/MyServer/
            wget https://buzzzy.co/Hub/serversetup/startscripts/start.sh
            wget https://buzzzy.co/Hub/serversetup/files/eula.txt
            chmod 770 ./start.sh
            screen -dmS myserver sh
            screen -S myserver -X stuff "./start.sh
            "
            echo "
            Your server is now running, to access console do screen -x myserver , the files are located ~/MyServer/, if you ever need to restart it, go into server folder and run script restart.sh!
            "
            echo "
            If you liked this resource please leave a review on spigot!
            "
            echo "
            To exit this script please press ctrl and c together until you're out of the script
            "
            sleep .6
            ;;
        *) echo invalid option;;
    esac
    done