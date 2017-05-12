##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                        ##
##                 Report Spigot errors https://goo.gl/w9aoZT                   ##
##################################################################################
##           All credit for the plugins downloaded go to their authors          ##
##################################################################################
echo "YOU MUST HAVE UPLOADED YOUR XENFORO .ZIP TO /VAR/WWW/HTML FOR THIS TO WORK"
sleep .5
echo "What is the name of the xenforo zip you downloaded?"
read -r Xenforovar
echo "Installing Xenforo"
echo "What should the xenforo database password be?"
read -r Passwordvar
mysql -u root -p -e 'create database xenforo;'
mysql -u root -p -e 'create user xenforo;'
mysql -u root -p -e 'GRANT ALL ON xenforo.* TO 'xenforo'@'localhost';'
mysql -u root -p -e 'USE xenforo update * set password=PASSWORD('$Passwordvar') where User='xenforo';'
cd /var/www/html
unzip $Xenforovar.zip
mv xenforo/* .
chmod 777 data
chmod 777 internal_data
echo "Main install done navagate your browser to: http://yourip/install "
echo "Your MYSQl Info: databasename: xenforo user: xenforo password: $Passwordvar"
sleep 2