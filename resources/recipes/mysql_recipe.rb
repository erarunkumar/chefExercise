#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
package 'mysql-server' do
action :install
end

service 'mysqld' do
action [ :enable , :start ]
end

bash 'mysql installation' do
code <<-EOH
'''#PASSWD=$(grep 'temporary password' /var/log/mysqld.log | cut -d' ' -f11) 
#PASSWD=$(grep 'temporary password' /var/log/mysqld.log | cut -d' ' -f11)
##mysql -e -uroot -p$PASSWD "UPDATE mysql.user SET Password = PASSWORD('CHANGEME') WHERE User = 'root'"
## Kill the anonymous users
#mysqladmin -u root -p$UD password "UDmishra@1234"
#
PASSWD="UDmishra@1234"
#mysql -e -uroot -p$PASSWD "DROP USER ''@'localhost'"
## Because our hostname varies we'll use some Bash magic here.
#mysql -e -uroot -p$PASSWD "DROP USER ''@'$(hostname)'"
## Kill off the demo database
#mysql -e -uroot -p$PASSWD "DROP DATABASE test"
## Make our changes take effect
##mysql -e "FLUSH PRIVILEGES"
#
mysql -uroot -p$PASSWD -e "CREATE DATABASE employeedb_opstree;"
#/usr/bin/mysql -uroot -p -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('password');" 
#/usr/bin/musql -uroot -p -e "GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';"''''
EOH
end
