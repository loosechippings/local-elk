#!/bin/bash 

docker run -d --rm --network elastic --name=metricbeat docker.elastic.co/beats/metricbeat:7.0.1 metricbeat -e -E output.elasticsearch.hosts='["elasticsearch:9200"]'
