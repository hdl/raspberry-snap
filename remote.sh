#!/bin/sh
# -*- coding: utf-8 -*-
ssh -p 20000 pi@localhost '~/snap/take_picture.sh'
scp -P 20000 pi@localhost:~/pic* /home/product/raspberry-snap/
cat /home/product/raspberry-snap/picdate.txt
