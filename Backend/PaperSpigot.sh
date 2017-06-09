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

Version: 5.6
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
PaperSpigot Installer
"
echo "
YOU MUST HAVE BASICS INSTALLED OR ELSE THIS WILL NOT WORK!!!!
"
sleep 1
PS3='What Version would you like to install? '
options=("Latest" "1.8.8" "1.9.4" "1.10.2" "1.11.2" )
select opt in "${options[@]}"
do
    case $opt in
        "Latest")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/lastSuccessfulBuild/artifact/paperclip.jar
            mv paperclip.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.8.8")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/443/artifact/Paperclip.jar
            mv Paperclip.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.9.4")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/773/artifact/paperclip.jar
            mv paperclip.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.10.2")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/916/artifact/paperclip.jar
            mv paperclip.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.11.2")
            cd ~
            mkdir Jars
            cd Jars
            wget https://ci.destroystokyo.com/job/PaperSpigot/1104/artifact/paperclip.jar
            mv paperclip.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        *) echo invalid option;;
    esac
    done