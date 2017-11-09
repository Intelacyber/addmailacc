#!/bin/bash
read -p "Enter a email address for the new user: " emailaddy
echo -n ${emailaddy}: >> /etc/dovecot/users
doveadm pw -s SHA512-CRYPT >> /etc/dovecot/users
echo "Added new user:" $emailaddy
exit 1
