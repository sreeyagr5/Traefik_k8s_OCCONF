

echo  Doing a delete via this kubernetes config $1

kubectl  $1 get nodes
kubectl  $1 get pods
kubectl  $1 get services

kubectl  $1 delete -f traefik-ingress.yaml
kubectl  $1 delete -f traefik-middlewares.yaml
kubectl  $1 delete -f service.yaml
kubectl  $1 delete -f deployment.yaml
kubectl  $1 delete -f load-balancer.yaml
kubectl  $1 delete -f prereqs.yaml

kubectl  $1 get nodes
kubectl  $1 get pods
kubectl  $1 get services
