systemctl start mariadb.service
sleep 7

mariadb -e "CREATE DATABASE IF NOT EXISTS '${MYSQL_DB}';"

mariadb -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"

mariadb -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO '${MYSQL_USER}'@'localhost';"

mariadb -e "FLUSH PRIVILEGES;"

#shut down mariadb
systemctl stop mariadb

#start mariadb
mysqld_safe --port=3306 --bind-address=0.0.0.0 --datadir='/var/lib/mysql'