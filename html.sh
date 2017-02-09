#!/bin/sh
# -*- coding: utf-8 -*-
NAME=`"cpuinfo"`
echo "Content-type:text/html\r\n"
echo "<html><head>"
echo "<title>$NAME</title>"
echo '<meta name="description" content="'$NAME'">'
echo '<meta name="keywords" content="'$NAME'">'
echo '<meta http-equiv="Content-type"
content="text/html;charset=UTF-8">'
echo '<meta name="ROBOTS" content="noindex">'
echo "</head><body><pre>"
ssh -p 20000 pi@localhost '~/snap/take_picture.sh'
scp -p 20000 pi@localhost:~/snap/pic* .
cat /home/product/raspberry-snap/picdate.txt
echo "\n"

echo "\ncpuinfo"
cat /proc/cpuinfo
echo "</pre></body></html>"
