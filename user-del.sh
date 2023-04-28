#!/bin/bash

echo -n "username: "
read username

echo -n "MySQL " &&
echo \
	"DROP USER IF EXISTS '${username:0:80}'@'localhost';" \
	"DROP DATABASE IF EXISTS \`${username}\`;" \
	"FLUSH PRIVILEGES;" \
	| sudo mysql mysql
