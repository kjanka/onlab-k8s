#!/bin/bash

kubectl delete -f elasticsearch-deployment.yaml,elasticsearch-service.yaml,kibana-deployment.yaml,kibana-service.yaml,logstash-deployment.yaml,logstash-service.yaml
echo "ELK kikapalva"