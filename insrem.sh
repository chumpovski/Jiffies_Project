#!/bin/bash

# Jerry Gama
# CPSC 351-5

# clear the message queue, then
# insert seconds.ko into the kernel and remove it again, then
# display the messages as a result of doing so
# chmod +x <filename> to get permission to run this

make

sudo -p "osc"
sudo dmesg -c
clear

printf "beginning script...\n\n"
#sudo insmod jiffies.ko
sudo insmod seconds.ko

#cat /proc/hello
#cat /proc/jiffies > jiffies.txt
cat /proc/seconds > seconds.txt

#sudo rmmod jiffies
sudo rmmod seconds
sudo dmesg

printf "\n...end of script\n\n"