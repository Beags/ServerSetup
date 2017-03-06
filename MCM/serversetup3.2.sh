##################################################################################
##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                         ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
#!/bin/sh
echo "Server Setup 3.0 by Buzzzy"
sleep 2
echo "You will need to install the basics before installing spigot,bungee,waterfall, etc"
sleep 1
echo "If you would like to have the script connect the servers and setup a vote proxy then buy the preimum version!"
echo "It also supports the author!"
sleep 2
echo "If you have any questions about setting up the servers yourself check out my website where I have posted guides!"
sleep .2
echo "If you are having a problem updating the jars, run the Jars option then try again!"
PS3='What would you like to install? '
options=("Spigot" "Bungee" "Waterfall" "Lilypad" "Vinilla" "Paperspigot" "Basics" "Forge" "Cauldron" "Sponge" "Jars" )
select opt in "${options[@]}"
do
    case $opt in
        "Spigot")
            cd ~/ServerSetup/Scripts/
            chmod 770 ./spigot.sh
            ./spigot.sh
            ;;
         "Bungee")
            cd ~/ServerSetup/Scripts/
            chmod 770 ./Bungee.sh
            ./Bungee.sh
            ;;
         "Waterfall")
            cd ~/ServerSetup/Scripts/
            chmod 770 ./Waterfall.sh
            ./Waterfall.sh
            ;;
        "Lilypad")
            cd ~/ServerSetup/Scripts/
            chmod 770 ./Lilypad.sh
            ./Lilypad.sh
            ;;
        "Vanilla")
            cd ~/ServerSetup/Scripts/
            chmod 770 ./Vanilla.sh
            ./Vanilla.sh
            ;;
        "Paperspigot")
            cd ~/ServerSetup/Scripts/
            chmod 770 ./Paperspigot.sh
            ./Paperspigot.sh
            ;;
        "Basics")
            cd ~/ServerSetup/Scripts/
            chmod 770 ./basics.sh
            ./basics.sh
            ;;
        "Forge")
            cd ~/ServerSetup/Scripts/
            chmod 770 ./Forge.sh
            ./Forge.sh
            ;;
        "Cauldron")
            echo "Please note that cauldron is no longer supported nor updated"
            cd ~/ServerSetup/Scripts/
            chmod 770 ./Cauldron.sh
            ./Cauldron.sh
            ;;
        "Sponge")
            cd ~/ServerSetup/Scripts/
            chmod 770 ./Sponge.sh
            ./Sponge.sh
            ;;
        "Jars")
            echo "Fixing jars"
            cd ~
            rm -rf Jars
            echo "Should be fixed!"
            ;;
        *) echo invalid option;;
    esac
    done