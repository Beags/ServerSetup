##################################################################################
##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                        ##
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
echo "
You will need to run the option Basics before anything else for it to work!
"
sleep 1
echo "
If you would like to support me check out my paypal link on the plugin page.
"
echo "
You will be choose some websoftware to install, if you don't know what software this is, then google them.
"
sleep 1
PS3='Choose your Web software: '
options=("Wordpress" "MyBB" "NamelessMC" "Xenforo" "Flarum" "phpBB" )
select opt in "${options[@]}"
do
    case $opt in
        "Wordpress")
            cd /var/www/html
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/wordpress.sh
            chmod 770 ./wordpress.sh
            ./wordpress.sh
            ;;
         "MyBB")
            cd /var/www/html
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/mybb.sh
            chmod 770 ./mybb.sh
            ./mybb.sh
            ;;
        "Xenforo")
            echo "
            This does not download xenforo, you must buy and download it yourself, and upload it via ftp to /var/www/html
            "
            cd /var/www/html
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Xenforo.sh
            chmod 770 ./Xenforo.sh
            ./Xenforo.sh
            ;;
        "NamelessMC")
            cd /var/www/html
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/NamelessMC.sh
            chmod 770 ./NamelessMC.sh
            ./NamelessMC.sh
            ;;
        "Flarum")
            echo "
            Please keep in mind this is beta software.
            "
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/Flarum.sh
            chmod 770 ./Flarum.sh
            ./Flarum.sh
        "phpBB")
            wget https://buzzzy.co/Hub/ServerSetup/Scripts/phpBB.sh
            chmod 770 ./phpBB.sh
            ./phpBB.sh
        *) echo invalid option;;
    esac
    done