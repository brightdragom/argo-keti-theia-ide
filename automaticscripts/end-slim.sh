#!/bin/bash
kubectl delete -f ./deploy/k8s-theia-deploy01.yml 
kubectl delete -f ./deploy/k8s-theia-deploy02.yml

kubectl delete -f ./svc/k8s-theia-service01.yml
kubectl delete -f ./svc/k8s-theia-service02.yml

kubectl delete -f ./ingress/k8s-theia-ingress-slim.yml

kubectl delete -f ./pv/k8s-theia-pvc01.yml
kubectl delete -f ./pv/k8s-theia-pvc02.yml
kubectl delete -f ./pv/k8s-theia-pv01.yml
kubectl delete -f ./pv/k8s-theia-pv02.yml

kubectl delete -f ./pv/k8s-theia-dind-pvc01.yml
kubectl delete -f ./pv/k8s-theia-dind-pvc02.yml
kubectl delete -f ./pv/k8s-theia-dind-pv01.yml
kubectl delete -f ./pv/k8s-theia-dind-pv02.yml

