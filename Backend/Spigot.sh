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
Spigot Installer
"
echo "
YOU MUST HAVE BASICS INSTALLED OR ELSE THIS WILL NOT WORK!!!!
"
sleep 1
PS3='What Version would you like to install? '
options=("1.8.8" "Latest" "1.9.4" "1.10" "1.7.10/1.8" "Developer" "1.12" )
select opt in "${options[@]}"
do
    case $opt in
        "1.8.8")
            cd ~
            mkdir Jars
            cd Jars
            wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
            java -jar BuildTools.jar --rev 1.8.8
            mv spigot-1.8.8.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
         "Latest")
            cd ~
            mkdir Jars
            cd Jars
            wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
            java -jar BuildTools.jar --rev latest
            mv spigot-1.12.1.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
         "1.9.4")
            cd ~
            mkdir Jars
            cd Jars
            wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
            java -jar BuildTools.jar --rev 1.9.4
            mv spigot-1.9.4.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.10")
            cd ~
            mkdir Jars
            cd Jars
            wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
            java -jar BuildTools.jar --rev 1.10
            mv spigot-1.10.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        "1.7/1.8")
            cd ~
            mkdir Jars
            cd Jars
            wget https://github.com/Sarabveer/CraftBukkit-Spigot-Binary/blob/master/spigot-1.7.10-1.8-R0.1/spigot-1.7.10-1.8-R0.1-1656.jar
            mv spigot-1.7.10-1.8-R0.1-1656.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
          "Developer")
            echo "
            warning, this is a verison of spigot that is in development, and should not be used on a production server!
            "
            sleep .1
            echo "
            please note that this might not always work, please report this not working on the github.
            "
            cd ~
            mkdir Jars
            cd Jars
            wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
            java -jar BuildTools.jar --dev
            mv spigot-1.12-pre6.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
          "1.11.2")
            cd ~
            mkdir Jars
            cd Jars
            wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
            java -jar BuildTools.jar --rev 1.11.2
            mv spigot-1.11.2.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
          "1.12")
            cd ~
            mkdir Jars
            cd Jars
            wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
            java -jar BuildTools.jar --rev 1.12
            mv spigot-1.12.jar server.jar
            wget https://buzzzy.co/Hub/ServerSetup/Global/screen.sh
            chmod 770 screen.sh
            ./screen.sh
            ;;
        *) echo invalid option;;
    esac
    done