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
echo "
Forge Installer
"
echo "
YOU MUST HAVE BASICS INSTALLED OR ELSE THIS WILL NOT WORK!!!!
"
sleep 1
PS3='What Version would you like to install? '
options=("1.7.10" "Latest" "1.8" "1.9.4" )
select opt in "${options[@]}"
do
    case $opt in
        "1.7.10")
            cd ~
            wget https://buzzzy.co/Hub/ServerSetup/Forge/1.7.10/Jars.zip
            unzip Jars.zip
            cd Jars
            mv forge-1.7.10-10.13.4.1566-1.7.10-universal.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
         "Latest")
            cd ~
            wget https://buzzzy.co/Hub/ServerSetup/Forge/Latest/Jars.zip
            unzip Jars.zip
            cd Jars
            mv forge-1.11.2-13.20.0.2228-universal.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
         "1.8")
            cd ~
            wget https://buzzzy.co/Hub/ServerSetup/Forge/1.8/Jars.zip
            unzip Jars.zip
            cd Jars
            mv forge-1.8-11.14.4.1563-universal.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh   
         "1.9.4")
            cd ~
            wget https://buzzzy.co/Hub/ServerSetup/Forge/1.9.4/Jars.zip
            unzip Jars.zip
            cd Jars
            mv forge-1.9-12.16.1.1887-universal.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        *) echo invalid option;;
    esac
    done