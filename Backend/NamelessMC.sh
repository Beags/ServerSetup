##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                        ##
##                 Report Spigot errors https://goo.gl/w9aoZT                   ##
##################################################################################
##           All credit for the plugins downloaded go to their authors          ##
##################################################################################
echo "Installing NamelessMC"
echo "What should the NamelessMC database password be?"
read -r Passwordvar
mysql -u root -p -e 'create database nameless;'
mysql -u root -p -e 'create user nameless;'
mysql -u root -p -e 'GRANT ALL ON nameless.* TO 'nameless'@'localhost';'
mysql -u root -p -e 'USE nameless update * set password=PASSWORD('$Passwordvar') where User='nameless';'
cd /var/www/html
wget https://github.com/NamelessMC/Nameless/archive/v1.0.16.zip
unzip Nameless-1.0.16.zip
mv Nameless-1.0.16/* .
echo "Main install done navagate your browser to: http://yourip/install "
echo "Your MYSQl Info: databasename: nameless  user: nameless password: $Passwordvar"
sleep 2