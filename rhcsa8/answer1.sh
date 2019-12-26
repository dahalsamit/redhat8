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

echo "Q7 listing ip address from access.log"
grep -o "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" access.log 

echo "Q7A listing unique address count sorted" 
grep -o "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" access.log | uniq -c |sort 

echo "Q8 find email address from the regex.txt file"
grep '[a-z+._%0-9-]\+@[a-z]\+\.[a-z]\+' regex.txt  

echo "Q8 find fqdn from regex.txt"
grep '[a-zA-Z0-9+._-%]\+\.\+[a-z]\+\.[a-z]\+' regex.txt 

echo "Q8 find ip address"
grep -o -E '([0-9]{1,3}[\.]){3}[0-9]{1,3}' regex.txt

echo "Q8 find line with Mr."
grep '^Mr\.' regex.txt 

echo "Q8 word ending with ing"
grep -o '\s*\S\+ing' regex.txt 
 


