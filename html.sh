#!/bin/sh
# -*- coding: utf-8 -*-
NAME="cpuinfo"
echo "Content-type:text/html\r\n"
echo "<html><head>"
echo "<title>$NAME</title>"
echo '<meta name="viewport" content="width=device-width, initial-scale=1">'
echo '<meta name="description" content="'$NAME'">'
echo '<meta name="keywords" content="'$NAME'">'
echo '<meta http-equiv="Content-type"
content="text/html;charset=UTF-8">'
echo '<meta name="ROBOTS" content="noindex">'
echo "</head><body><pre>"
pwd
cd ~
pwd
echo $HOME
/home/product/raspberry-snap/remote.sh
echo "\n"
echo '<img src="pic.jpg" alt="Smiley face" " height="600">'
echo "</pre></body></html>"
