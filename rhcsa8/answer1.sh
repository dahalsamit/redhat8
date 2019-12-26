#!/bin/bash
echo "Q1 first 10 line of /var/log/syslog"
head -n 10 /var/log/syslog

echo "Q2 Last 10 line of /var/log/syslog"
tail -n 10 /var/log/syslog

echo "Q3 redirecting output of  /etc/passwd to /root/password.1"
cat /etc/passwd > /root/password.1

echo " Q3a) Appending /etc/passwd to /root/password.1 "
cat /etc/passwd | tee  -a /root/password.1

echo "Q4 user with /bin/bash"
grep "/bin/bash$" /etc/passwd > /root/password.bash

echo "Q5 redirect stderr to /root/stderr.out"
ls -al /proc/1/fd/* 2> /root/stderr.out

echo  "Q6 redirect stdout to /dev/null"
ls -al /proc 1 > /dev/null

echo "Q7"

echo "Q8"

