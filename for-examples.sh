#
# # # # # # # # # #
#!/usr/bin/env bash
# Purpose: Update all my Linode servers powered by Debian/Ubuntu Linux
# Author: Vivek Gite under GPL v2.x+
# ----------------------------------------
log="/tmp/apt-get.log"
>"${log}"
for s in ln.cbz0{1..5}
do 
   echo "Updating and patching $s, please wait..." | tee -a "${log}"
   ssh root@${s} -- apt-get -q -y update >/dev/null
   ssh root@${s} -- DEBIAN_FRONTEND=noninteractive apt-get -y -q upgrade >>"${log}"
done
echo "Check $log file for details."
#
#  W H I T E   S P A C E   B E T W E E N   E X A M P L E S
#
## CENTOS/RHEL example (for fedora replace yum with dnf) ##
for s in server0{1..8}
do
    echo "*** Patching and updating ${s} ***"
    ssh root@${s} -- "yum -y update"
done
#
#  W H I T E   S P A C E   B E T W E E N   E X A M P L E S
#
#!/bin/bash
ips="$(host -t a www.cyberciti.biz | awk '{ print $4}')"
for i in $ips; do ping -q -c 4 "$i"; done

# For loop with array elements
DB_AWS_ZONE=('us-east-2a' 'us-west-1a' 'eu-central-1a')
# 
for zone in "${DB_AWS_ZONE[@]}"
do
  echo "Creating rds (DB) server in $zone, please wait ..."
  aws rds create-db-instance \
  --availability-zone "$zone"
  --allocated-storage 20 --db-instance-class db.m1.small \
  --db-instance-identifier test-instance \
  --engine mariadb \
  --master-username my_user_name \
  --master-user-password my_password_here
done
#
#  W H I T E   S P A C E   B E T W E E N   E X A M P L E S
#
# Loop with a shell variable
_admin_ip="202.54.1.33|MUM_VPN_GATEWAY 23.1.2.3|DEL_VPN_GATEWAY 13.1.2.3|SG_VPN_GATEWAY"
for e in $_admin_ip
do
   ufw allow from "${e%%|*}" to any port 22 proto tcp comment 'Open SSH port for ${e##*|}'
done
#
#  W H I T E   S P A C E   B E T W E E N   E X A M P L E S
#
# Loop with a number
for i in {START..END}
do
   commands
done
## step value ##
for i in {START..END..STEP}
do
   commands
done
## example: ping cbz01, cbz02, cbz03, and cbz04 using a loop ##
for i in 0{1..4}
do
    h="cbz${i}"
    ping -c 1 -q "$h" &>/dev/null 
    if [ $? -eq 0 ]
    then
        echo "server $h alive" 
    else
        echo "server $h dead or can not ping."
    fi
done
#
#  W H I T E   S P A C E   B E T W E E N   E X A M P L E S
#
#Loop with strings
PKGS="php7-openssl-7.3.19-r0  php7-common-7.3.19-r0  php7-fpm-7.3.19-r0  php7-opcache-7.3.19-r0 php7-7.3.19-r0"
for p in $PKGS
do
   echo "Installing $p package"
   sudo apk add "$p"
done
#
#  W H I T E   S P A C E   B E T W E E N   E X A M P L E S
#
# Command substitution
# for var in $(command)
# do
#   print "$var"
# done
## example ##
for f in $(ls /nas/*.pdf)
do
  print "File $f"
done