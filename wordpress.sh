#!/bin/bash
# Run using $ bash wordpress.sh

wget https://wordpress.org/latest.zip
unzip latest.zip
cd wordpress
mv * ../
cd ..
rm latest.zip
rmdir wordpress
read -p "DB Name : " databasename
read -p "DB User : " databaseuser
read -p "DB Password : " databasepassword
sed "s/database_name_here/$databasename/g" wp-config-sample.php > wp-config1.php
rm wp-config-sample.php
sed "s/username_here/$databaseuser/g" wp-config1.php > wp-config2.php
rm wp-config1.php
sed "s/password_here/$databasepassword/g" wp-config2.php > wp-config.php
rm wp-config2.php
chown -R admin:admin .
echo 'Wordpress Installed'