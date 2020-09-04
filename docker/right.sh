#! /bin/bash


ip route add 172.20.0.0/16 via 172.21.0.1
ip link add vxlan100 type vxlan id 100 dstport 4789 srcport 4789 4790 remote 172.20.0.2 dev eth0
ip addr add 20.0.0.2/8 dev vxlan100
ip link set vxlan100 up
