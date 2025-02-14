#!/bin/bash
kubectl delete -f ./deploy/k8s-theia-deploy03.yml 
kubectl delete -f ./deploy/k8s-theia-deploy04.yml

kubectl delete -f ./svc/k8s-theia-service03.yml
kubectl delete -f ./svc/k8s-theia-service04.yml

kubectl delete -f ./ingress/k8s-theia-ingress-slim2.yml

kubectl delete -f ./pv/k8s-theia-pvc03.yml
kubectl delete -f ./pv/k8s-theia-pvc04.yml
kubectl delete -f ./pv/k8s-theia-pv03.yml
kubectl delete -f ./pv/k8s-theia-pv04.yml

kubectl delete -f ./pv/k8s-theia-dind-pvc03.yml
kubectl delete -f ./pv/k8s-theia-dind-pvc04.yml
kubectl delete -f ./pv/k8s-theia-dind-pv03.yml
kubectl delete -f ./pv/k8s-theia-dind-pv04.yml

