#!/bin/bash

egrep -o '[01]+' ./bruxarias.dat > 1a.txt

egrep -o '1[01]{0,7}' ./bruxarias.dat > 1b.txt

egrep -o '^1[01]{0,7}$' ./bruxarias.dat > 1c.txt

egrep -wo '([1-9][0-9]+|[0-9]{1,1})' ./bruxarias.dat > 1d.txt

egrep -o '[ue]tt' ./bruxarias.dat > 1e.txt

egrep -o '[A-Za-z][a-z]{2,}' ./bruxarias.dat > 1f.txt

egrep -wo '[A-Za-z]+[a-zA-Z0-9_]*' ./bruxarias.dat > 1g.txt

egrep -wo '(([0-9])|([1-9][0-9])|(1[0-9][0-9])|(2[0-4][0-9])|(25[0-5]))\.(([0-9])|([1-9][0-9])|(1[0-9][0-9])|(2[0-4][0-9])|(25[0-5]))\.(([0-9])|([1-9][0-9])|(1[0-9][0-9])|(2[0-4][0-9])|(25[0-5]))\.(([0-9])|([1-9][0-9])|(1[0-9][0-9])|(2[0-4][0-9])|(25[0-5]))' ./bruxarias.dat > 1h.txt


# ---------------- Questão 2 ----------------


find /etc -type d > 2a.txt

find /etc -maxdepth 1 -type d > 2b.txt

find /etc -size +1k -type f > 2c.txt

find /var -mtime -7 > 2d.txt


# ---------------- Questão 3 ----------------


awk -F':' '{ print $1 }' /etc/passwd > 3a.txt

awk -F':' '{ if (NR>10 && NR<20) print $1 }' /etc/passwd > 3b.txt


# ---------------- Questão 4 ----------------

sed "s/$(whoami)/exercicio/" /etc/passwd > 4a.txt

sed "/$(whoami)/d" /etc/passwd > 4b.txt

