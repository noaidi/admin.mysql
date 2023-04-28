#!/bin/bash

echo -n "MySQL " &&
echo \
	"SELECT User FROM user WHERE User != '' AND Host = 'localhost';" \
	| sudo mysql mysql
