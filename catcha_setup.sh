#!/bin/bash

# update apt stuff
apt-get update

# install git
apt-get -y install git

# install java7
apt-get -y install openjdk-7-jdk

# set java_home for all!
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> /etc/profile

# install tomcat7
apt-get -y install tomcat7 tomcat7-admin

# install mysql
# from https://serversforhackers.com/video/installing-mysql-with-debconf
export DEBIAN_FRONTEND="noninteractive"
debconf-set-selections <<< "mysql-server mysql-server/root_password password catch"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password catch"
apt-get -y install mysql-server

# create database
mysql -u root --password="catch" -e 'create database if not exists catch default charset utf8;'
mysql -u root --password="catch" -e 'grant all on catch.* to "catch"@"localhost" identified by "catch";'

# dependencies for sdkman
apt-get -y install zip unzip

# install sdkman and grails
if [ ! -e /home/vagrant/.sdkman ]; then
    su -l vagrant -c "curl -s 'https://get.sdkman.io' | bash"
fi

# install grails
su -l vagrant -c "source /home/vagrant/.sdkman/bin/sdkman-init.sh && sdk install grails 2.2.5"

