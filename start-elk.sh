#!/bin/bash

docker run -d --rm --name elasticsearch --net elastic -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:7.0.1

docker run --rm -d --name kibana --net elastic -p 5601:5601 kibana:7.0.1
