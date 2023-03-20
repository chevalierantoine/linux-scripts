#!/bin/bash

cp /etc/resolv.conf{,.ori}
echo -e 'nameserver 192.168.79.100\nsearch local.isima.fr' > /etc/resolv.conf
openvpn /home/antoine/.vpn/vpn-etu-tcp.ovpn
cp /etc/resolv.conf{.ori,}
