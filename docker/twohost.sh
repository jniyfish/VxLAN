#! /bin/bash


ip link add vxlan300 type vxlan id 300 dstport 4789 srcport 4789 4790 remote 172.20.0.2 dev eth0
ip addr add 30.0.0.3/8 dev vxlan100
ip link set vxlan300 up


ip link add vxlan200 type vxlan id 200 dstport 4789 srcport 4789 4790 remote 172.20.0.2 dev eth0
ip addr add 40.0.0.3/8 dev vxlan200
ip link set vxlan200 up
