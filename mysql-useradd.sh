#!/bin/bash

echo -n "username: "
read username

echo -n "password: "
read passwd

echo -n "MySQL " &&
echo \
	"CREATE USER IF NOT EXISTS '${username:0:80}'@'localhost' IDENTIFIED BY '${passwd}';" \
	"CREATE DATABASE IF NOT EXISTS \`${username}\`;" \
	"GRANT ALL PRIVILEGES ON \`${username}\`.* TO '${username:0:80}'@'localhost';" \
	"FLUSH PRIVILEGES;" \
	| sudo mysql mysql
