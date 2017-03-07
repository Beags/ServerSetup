##                    SERVER SETUP SCRIPT BY BUZZY                              ##
##                 Report config error https://buzzzy.co                         ##
##                 Report Spigot errors https://goo.gl/w9aoZT                   ##
##################################################################################
##           All credit for the plugins downloaded go to their authors          ##
##################################################################################
#!/bin/sh
echo "Server Setup 3.0 by Buzzzy"
sleep 1
cd /etc/apt/sources.list.d/
cat > java-8-debian.list << END_TEXT
deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
END_TEXT
PS3='Choose your linux distro: '
options=("Debian" "Ubuntu" "Centos" )
select opt in "${options[@]}"
do
    case $opt in
        "Debian")
            apt-get update
            apt-get install wget
            apt-get install apache2
            apt-get install mysql-server
            apt-get install php5 libapache2-mod-php5
            /etc/init.d/apache2 restart
            apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
            apt-get update
            apt-get install oracle-java8-installer
            apt-get update
            apt-get install screen
            apt-get install git
            echo "Basics installed, you can go back to the main script and install the server now!"
            exit
            ;;
         "Ubuntu")
            apt-get update
            apt-get install wget
            apt-get install apache2
            apt-get install mysql-server
            apt-get install php5 libapache2-mod-php5
            /etc/init.d/apache2 restart
            cd /etc/apt/sources.list.d/
            wget https://buzzzy.co/Hub/serversetup/Debian/java-8-debian.list
            apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
            apt-get update
            apt-get install oracle-java8-installer
            apt-get update
            apt-get install screen
            apt-get install git
            echo "Basics installed, you can go back to the main script and install the server now!"
            exit
            ;;
         "Centos")
            yum update
            yum install wget
            cd /opt/
            wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u111-b14/jdk-8u111-linux-x64.tar.gz"
            tar xzf jdk-8u111-linux-x64.tar.gz
            cd /opt/jdk1.8.0_111/
            alternatives --install /usr/bin/java java /opt/jdk1.8.0_111/bin/java 2
            alternatives --config java
            alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_111/bin/jar 2
            alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_111/bin/javac 2
            alternatives --set jar /opt/jdk1.8.0_111/bin/jar
            alternatives --set javac /opt/jdk1.8.0_111/bin/javac
            echo "Basics installed, you can go back to the main script and install the server now!"
            exit
            ;;
        *) echo invalid option;;
    esac
    done