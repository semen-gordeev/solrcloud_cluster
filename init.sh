#!/bin/bash

docker network create solrcloudcluster_default

docker-compose scale zk1=1 zk2=1 zk3=1