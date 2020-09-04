#! /bin/bash


ip route add 172.21.0.0/16 via 172.20.0.1
ip link add vxlan100 type vxlan id 100 dstport 4789 srcport 4789 4790 remote 172.21.0.2 dev eth0
ip addr add 20.0.0.1/8 dev vxlan100
ip link set vxlan100 up

ip link add br0 type bridge
ip link set vxlan100 master br0
ip link set vxlan100 up
ip link set br0 up

ip netns add h1
ip link add veth0 type veth peer name veth1
ip link set dev veth0 master br0
ip link set dev veth0 up

ip link set dev veth1 netns h1
ip netns exec h1 ip link set lo up

ip netns exec h1 ip link set veth1 name eth0

ip netns exec h1 ip link set eth0 up
