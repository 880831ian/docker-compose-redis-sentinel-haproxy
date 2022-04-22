#!/bin/bash

green="\033[1;32m";white="\033[1;0m";red="\033[1;31m";

echo "redis1 IPAddress:"
redis1_ip=`docker inspect redis1 | grep "IPv4" | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"`
echo $redis1_ip;
echo "------------------------------"
echo "redis2 IPAddress:"
redis2_ip=`docker inspect redis2 | grep "IPv4" | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"`
echo $redis2_ip;
echo "------------------------------"
echo "redis3 IPAddress:"
redis3_ip=`docker inspect redis3 | grep "IPv4" | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"`
echo $redis3_ip;
echo "------------------------------"
echo "haproxy IPAddress:"
haproxy_ip=`docker inspect haproxy | grep "IPv4" | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"`
echo $haproxy_ip;
echo "------------------------------"

echo "redis1:"
docker exec -it redis1 redis-cli info Replication | grep role
echo "redis2:"
docker exec -it redis2 redis-cli info Replication | grep role
echo "redis3:"
docker exec -it redis3 redis-cli info Replication | grep role

