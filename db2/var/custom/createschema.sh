chmod 777 /etc/krb5.keytab
chmod 777 /opt/ibm/db2/V11.5/adm/db2start
hostname db2
sudo -i -u db2user bash << EOF
/opt/ibm/db2/V11.5/bin/db2 UPDATE DATABASE MANAGER CONFIGURATION USING AUTHENTICATION KERBEROS

kinit -k -t /etc/krb5.keytab db2user/db2@EXAMPLE.COM
/opt/ibm/db2/V11.5/adm/db2start
EOF