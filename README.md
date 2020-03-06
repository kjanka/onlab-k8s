# onlab-k8s

## Önálló laboratórium

## Célok
A feladat fő célja egy Kubernetes operator írása, amely egy választott stacket kezel a clusterben.

## Lépések

1. Az ELK stack megismerése
    * [Elasticsearch](https://www.elastic.co/)
    * [Logstash](https://www.elastic.co/guide/en/logstash/7.6/installing-logstash.html#brew)
    * [Kibana](https://www.elastic.co/kibana)
2. Az operator definiálása és használata

## Tartalom

* Leírófájlok:
    * elastic-search-deployment.yaml 
    * elasticsearch-service.yaml
    * kibana-deployment.yaml
    * kibana-service.yaml
    * logstash-deployment.yaml
    * logstash-service.yaml

* Configfájl:
    * logstash.conf
### Használat

#### Előfeltétel:
    Futó Kubernetes környezet (pl, minikube, cloud környezet)
    kubectl


```
kubectl create configmap logstash-config --from-file=logstash.conf

kubectl apply -f elastic-search-deployment.yaml,elasticsearch-service.yaml,kibana-deployment.yaml,kibana-service.yaml,logstash-deployment.yaml,logstash-service.yaml
```

A deploymentek és service-ek feltöltése után ki is próbálható a stack.
