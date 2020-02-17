#!/bin/bash

kubectl create configmap logstash-config --from-file=logstash.conf

kubectl apply -f elasticsearch-deployment.yaml,elasticsearch-service.yaml,kibana-deployment.yaml,kibana-service.yaml,logstash-deployment.yaml,logstash-service.yaml

echo "ELK stack setup complete"
