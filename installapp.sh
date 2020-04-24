#!/bin/sh

echo  Doing a install via this kubernetes config $1


kubectl  $1 apply -f deployment.yaml
kubectl  $1 apply -f service.yaml
kubectl  $1 apply -f traefik-middlewares.yaml
kubectl  $1 apply -f traefik-ingress.yaml

kubectl  $1 get nodes
kubectl  $1 get pods
kubectl  $1 get services
kubectl  $1 version
