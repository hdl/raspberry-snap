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
sshpass -p 'raspberry' ssh -p 20000 pi@localhost 'raspistill -q 5 -o ~/pic.jpg --nopreview --exposure sports --timeout 1 2>&1; echo "Take picture: $?"; TZ='America/Los_Angeles'; export TZ; date; scp ~/pic.jpg product@47.88.195.56:~/raspberry-snap/; echo "scp: $?";'
TZ='America/Los_Angeles'; export TZ;
echo "Serve photo modify time:"
ls -all | grep pic.jpg | awk '{print $8}'
echo '<img src="pic.jpg" alt="Smiley face" " height="600">'
echo "</pre></body></html>"
