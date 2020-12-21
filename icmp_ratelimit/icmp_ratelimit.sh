#!/usr/bin/env bash 
while :
do
    echo $((500 + ${RANDOM} % 1500)) > /proc/sys/net/ipv4/icmp_msgs_per_sec
    sleep .95
done
