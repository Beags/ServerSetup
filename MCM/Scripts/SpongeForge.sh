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
echo "Sponge Forge Installer"
echo "YOU MUST HAVE BASICS INSTALLED OR ELSE THIS WILL NOT WORK!!!!"
sleep 1
PS3='What Version would you like to install? '
options=("1.10.2" "1.11.2" )
select opt in "${options[@]}"
do
    case $opt in
         "1.10.2")
            cd ~
            mkdir Jars
            cd Jars
            wget https://repo.spongepowered.org/maven/org/spongepowered/spongeforge/1.10.2-2221-5.2.0-BETA-2223/spongeforge-1.10.2-2221-5.2.0-BETA-2223.jar
            mv spongeforge-1.10.2-2221-5.2.0-BETA-2223.jar server.jar
            cd ~/ServerSetup/Scripts/
            chmod 770 screen.sh
            ./screen.sh
            ;;
         "1.11.2")
            echo "Please keep in mind this version is experimental"
            cd ~
            mkdir Jars
            cd Jars
            wget https://repo.spongepowered.org/maven/org/spongepowered/spongeforge/1.11.2-2227-6.0.0-BETA-2224/spongeforge-1.11.2-2227-6.0.0-BETA-2224.jar
            mv spongeforge-1.11.2-2227-6.0.0-BETA-2224.jar server.jar
            cd ~/ServerSetup/Scripts/
            chmod 770 screen.sh
            ./screen.sh
            ;;
        *) echo invalid option;;
    esac
    done