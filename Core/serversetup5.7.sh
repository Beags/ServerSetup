##################################################################################
##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                        ##
##                 Report Spigot/Bungee errors https://goo.gl/w9aoZT            ##
##################################################################################
##     All credit for the items installed/downloaded go to original authors     ##
##################################################################################
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

Version: 5.7
"
sleep 2
echo "
Written by Buzzy
"
sleep .3
echo "
Report all bugs here: https://github.com/Beags/ServerSetup/issues
"
echo "
You will need to run the option Basics before anything else for it to work!
"
sleep 1
echo "
If you would like to support me check out my paypal link on the plugin page.
"
sleep 2
echo "
If you are having a problem updating the jars, run the Jars option then try again!
"
cd ~
rm -rf Scripts
mkdir Scripts
cd Scripts
PS3='What would you like to install? '
options=("Spigot" "Bungee" "Waterfall" "Lilypad" "Vanilla" "Paperspigot" "Basics" "Forge" "Cauldron" "Sponge" "Jars" "Web" "Travertine" "TacoSpigot" "HexaCord" "craftbukkit" "Torch" "Hose")
select opt in "${options[@]}"
do
    case $opt in
        "Spigot")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/spigot.sh
            chmod 770 ./spigot.sh
            ./spigot.sh
            ;;
         "Bungee")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Bungee.sh
            chmod 770 ./Bungee.sh
            ./Bungee.sh
            ;;
         "Waterfall")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Waterfall.sh
            chmod 770 ./Waterfall.sh
            ./Waterfall.sh
            ;;
        "Lilypad")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Lilypad.sh
            chmod 770 ./Lilypad.sh
            ./Lilypad.sh
            ;;
        "Vanilla")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Vanilla.sh
            chmod 770 ./Vanilla.sh
            ./Vanilla.sh
            ;;
        "Paperspigot")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Paperspigot.sh
            chmod 770 ./Paperspigot.sh
            ./Paperspigot.sh
            ;;
        "Basics")
            wget https://buzzzy.co/Hub/ServerSetup/Global/basics.sh
            chmod 770 ./basics.sh
            ./basics.sh
            ;;
        "Forge")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Forge.sh
            chmod 770 ./Forge.sh
            ./Forge.sh
            ;;
        "Cauldron")
            echo "
            Please note that cauldron is no longer supported nor updated
            "
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Cauldron.sh
            chmod 770 ./Cauldron.sh
            ./Cauldron.sh
            ;;
        "Sponge")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Sponge.sh
            chmod 770 ./Sponge.sh
            ./Sponge.sh
            ;;
        "Jars")
            echo "
            Fixing jars
            " 
            cd ~
            rm -rf Jars
            echo "
            Should be fixed!
            "
            ;;
        "Web")
            echo "
            THIS IS IN BETA, PLEASE REPORT ANY ISSUES ON THE GITHUB!
            "
            sleep 1
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/web,sh
            chmod 770 ./web.sh
            ./web.sh
            ;;
        "Travertine")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Travertine.sh
            chmod 770 ./Travertine.sh
            ./Travertine.sh
            ;;
        "TacoSpigot")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/TacoSpigot.sh
            chmod 770 ./TacoSpigot.sh
            ./TacoSpigot.sh
            ;;
        "HexaCord")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/HexaCord.sh
            chmod 770 ./HexaCord.sh
            ./HexaCord.sh
            ;;
        "craftbukkit")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/craftbukkit.sh
            chmod 770 ./craftbukkit.sh
            ./craftbukkit.sh
            ;;
        "Torch")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Torch.sh
            chmod 770 ./Torch.sh
            ./Torch.sh
            ;;
        "Hose")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Hose.sh
            chmod 770 ./Hose.sh
            ./Hose.sh
            ;;
        *) echo invalid option;;
    esac
    done