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
echo "Sponge Installer"
echo "YOU MUST HAVE BASICS INSTALLED OR ELSE THIS WILL NOT WORK!!!!"
sleep 1
PS3='What Version would you like to install? '
options=("Vinilla" "SpongeForge" )
select opt in "${options[@]}"
do
    case $opt in
        "Vinilla")
            cd ~
            cd ~/ServerSetup/Scripts/
            chmod 770 SpongeVinilla.sh
            ./SpongeVinilla.sh
            ;;
         "SpongeForge")
            cd ~
            cd ~/ServerSetup/Scripts/
            chmod 770 SpongeForge.sh
            ./SpongeForge.sh
            ;;
        *) echo invalid option;;
    esac
    done