#!/bin/bash

docker-compose up -d

sleep 10

docker exec -it solrcloudcluster_solr1_1 /bin/sh -c "/opt/solr/bin/solr create -c testindex -s 2 -rf 2"