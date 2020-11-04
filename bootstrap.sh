#!/bin/sh
minikube addons enable ingress
minikube addons enable ingress-dns
minikube addons enable default-storageclass
minikube addons enable storage-provisioner

kubectl apply -f .tiller/
kubectl apply -f metrics-server.yaml
kubectl apply -f kube-state-metrics.yaml
helm init --service-account tiller
