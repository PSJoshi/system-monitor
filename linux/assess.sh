#!/bin/bash

# collect system date
date
# collect system id information
uname -a
# collect hostname
hostname
# collect hostid
hostid
# collect ip configuration and interface information
ifconfig -a
# collect network connection information
netstat -an
# collect network routing information
netstat -nr
# collect running processes
ps -eaf
# collect lsof information
lsof -n
# collect uptime and w information
w
# collect logged in users
who
# collect results of wtmp file
last -a -i
# collect last logged in users
lastlog
# collecting mount points information
mount
# collecting hard disk usage info
df -k
# collecting group information
groups
# collecting user id information
id
# collect md5 hashes
find / -xdev -type f -exec md5sum -b {} \;

# collect file meta data
# Exclude all files in /proc and /sys directory
# The following command will print file information as per the following format:
# "permissions;access date;access time;modification date;modification time;change date;change time;user ownership;group ownership;file size;file name"

flags="-printf %m;%Ax;%AT;%Tx;%TT;%Cx;%CT;%U;%G;%s;%p\n"
find / -path /proc -prune -o -path /sys -prune -o $flags

# find files/directories excluding /proc and /sys directory
find / -path /proc -prune -o -path /sys -prune -o -type d
find / -path /proc -prune -o -path /sys -prune -o -type f

# Collect failed login information
lastb -F 
