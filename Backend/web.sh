##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                        ##
##                 Report Spigot errors https://goo.gl/w9aoZT                   ##
##################################################################################
##           All credit for the plugins downloaded go to their authors          ##
##################################################################################
#!/bin/sh
echo "Server Setup 4.2 by Buzzzy"
sleep 1
echo "YOU MOST HAVE RUN BASICS BEFORE THIS"
echo "You will be choose some websoftware to install, if you don't know what software this is, then google them"
sleep 1
PS3='Choose your Web software: '
options=("Wordpress" "MyBB" "NamelessMC" )
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
            echo "This does not download xenforo, you must buy and download it yourself, and upload it via ftp to /var/www/html"
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
        *) echo invalid option;;
    esac
    done