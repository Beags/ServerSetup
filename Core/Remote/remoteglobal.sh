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

Version: 5.6 Remote
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
Remote Server Setup Linux / Mac
"
sleep .1
echo "
Please follow all on screen instructions as this connects to your server
"
echo "
For easier access the script will create an ssh key for easier access
"
sleep 1
cd ~/.ssh/
echo "What is your servers ip?"
read -r HostNamevar
cat > config << END_TEXT
Host Node1
HostName $HostNamevar
User root
IdentityFile ~/.ssh/id_rsa
END_TEXT
ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub root@$HostNamevar
chmod 600 ~/.ssh/config
PS3='What OS are you running? '
options=("Debian" "Ubuntu" "CentOS")
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            ssh Node1 "apt-get update && apt-get install curl && curl -O https://buzzzy.co/Hub/ServerSetup/Downloads/serversetup.zip && apt-get update && apt-get install unzip && unzip serversetup.zip && chmod 770 ./serversetup3.2.sh && ./serversetup3.2.sh"
            ;;
        "Ubuntu")
            ssh Node1 "apt-get update && apt-get install curl && curl -O https://buzzzy.co/Hub/ServerSetup/Downloads/serversetup.zip && apt-get update && apt-get install unzip && unzip serversetup.zip && chmod 770 ./serversetup3.2.sh && ./serversetup3.2.sh"
            ;;
        "CentOS")
            ssh Node1 "yum update && yum install curl && curl -O https://buzzzy.co/Hub/ServerSetup/Downloads/serversetup.zip && yum update && yum install unzip && unzip serversetup.zip && chmod 770 ./serversetup3.2.sh && ./serversetup3.2.sh"
            ;;
        *) echo invalid option;;
    esac
done
exit