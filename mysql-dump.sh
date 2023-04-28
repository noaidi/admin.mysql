#!/bin/bash

echo -n "db name: "
read dbname

echo -n "out file: "
read outfile

echo -n "MySQL " &&
sudo mysqldump $dbname > $outfile
