#!/bin/sh

su oracle << EOF
echo "Username:"
whoami

echo "Initialize oracle user(s)"
echo password | okinit -k -t /etc/krb5.keytab XE/oracle

echo "List principles in key table: "
oklist -k -t /etc/krb5.keytab
EOF

echo "Make credential cache accessible"
chmod 777 /tmp/krb5cc_


