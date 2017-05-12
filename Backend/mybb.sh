##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                        ##
##                 Report Spigot errors https://goo.gl/w9aoZT                   ##
##################################################################################
##           All credit for the plugins downloaded go to their authors          ##
##################################################################################
echo "Installing mybb"
echo "What should the mybb database password be?"
read -r Passwordvar
mysql -u root -p -e 'create database mybb;'
mysql -u root -p -e 'create user mybb;'
mysql -u root -p -e 'GRANT ALL ON mybb.* TO 'mybb'@'localhost';'
mysql -u root -p -e 'USE mybb update * set password=PASSWORD('$Passwordvar') where User='mybb';'
cd /var/www/html
wget https://resources.mybb.com/downloads/mybb_1811.zip
unzip mybb_1811.zip
mv mybb_1811/* .
mv upload/* .
chmod 666 inc/config.php inc/settings.php
chmod 777 cache/ cache/themes/ uploads/ uploads/avatars/
chmod 666 inc/languages/english/*.php inc/languages/english/admin/*.php
chmod 777 cache/ cache/themes/ uploads/ uploads/avatars/ admin/backups/
echo "Main install done navagate your browser to: http://yourip/install "
echo "Your MYSQl Info: databasename: mybb user: mybb password: $Passwordvar"
sleep 2