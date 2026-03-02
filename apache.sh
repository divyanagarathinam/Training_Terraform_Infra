#!/bin/bash
apt update -y
apt install -y apache2 git

systemctl enable apache2
systemctl start apache2

cd /var/www/html
git clone https://github.com/karishma1521success/swiggy-clone.git
mv swiggy-clone/* .
rm -rf swiggy-clone

chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
