#!/bin/sh -e

/bin/cp -a /etc/issue.net /etc/issue.backup_issue_brander;
/bin/cp -a /etc/issue.net /etc/issue-original;
/bin/cat /bin/cat ./issue.base > /etc/issue-original;
/bin/cp ./addip2issue /etc/network/if-up.d/addip2issue;
/bin/chmod 755 /etc/network/if-up.d/addip2issue;
/bin/cp ./get-ip-address /usr/local/bin/get-ip-address;
/bin/chmod 744 /usr/local/bin/get-ip-address;
/bin/chown root:staff /usr/local/bin/get-ip-address;

