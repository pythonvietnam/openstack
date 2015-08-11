#!/bin/bash -ex
source config.cfg
echo "Welcome to setup OpenSatck - Step 1: Config IP for CONTROLLER. Script by Python Viet Nam"
sleep 8
ifaces=/etc/network/interfaces
test -f $ifaces.orig || cp $ifaces $ifaces.orig
rm $ifaces
touch $ifaces
cat << EOF >> $ifaces
#Assign IP for Controller node

# LOOPBACK NET 
auto lo
iface lo inet loopback

# MGNT NETWORK
auto eth0
iface eth0 inet static
address $CON_MGNT_IP
netmask $NETMASK_ADD


# EXT NETWORK
auto eth1
iface eth1 inet static
address $CON_EXT_IP
netmask $NETMASK_ADD
gateway $GATEWAY_IP
dns-nameservers 8.8.8.8
EOF


echo "Configuring hostname in CONTROLLER node"
sleep 3
echo "controller" > /etc/hostname
hostname -F /etc/hostname
echo "Config IP complete. Now the machine will be reboot"
sleep 5
#Khoi dong lai cac card mang vua dat
# service networking restart

#service networking restart
# ifdown eth0 && ifup eth0
# ifdown eth1 && ifup eth1
# ifdown eth2 && ifup eth2


#sleep 5
init 6
#




