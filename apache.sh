#!/bin/bash
yum update -y
yum install -y httpd git

systemctl enable httpd
systemctl start httpd

cd /var/www/html
git clone https://github.com/karishma1521success/swiggy-clone.git

mv swiggy-clone/* .
rm -rf swiggy-clone

chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html
