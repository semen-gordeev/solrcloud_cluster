#!/bin/sh

IPADDRESS=`ip -4 addr show scope global dev eth0 | grep inet | awk '{print \$2}' | cut -d / -f 1`

echo "server.$SERVERNUM=$IPADDRESS:2888:3888;2181" >> /opt/zookeeper/conf/zoo.cfg.dynamic
/opt/zookeeper/bin/zkServer-initialize.sh --force --myid=$SERVERNUM
/opt/zookeeper/bin/zkServer.sh start-foreground
