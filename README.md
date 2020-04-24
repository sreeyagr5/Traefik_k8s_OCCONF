# Traefik_k8s_OCCONF
This has been tested on docker on desktop and can be used and deploy via LoadBalancer.

Deploy Traefik

The code has 2 scripts , init.sh - initilize lb and setup CRD,RBAC and ClusterRole and Binding.

Namespace - For logical separation
ServiceAccount - For api access
ClusterRole - RBAC role
ClusterRoleBinding - RBAC binding

DaemonSet/Deployment - Pod distribution
Service - Service to bind the pods
Ingress - FQDN declaration

Create Kubernetes setup Sequence
This sets up one time stuff such as loading initial CRD from Traefik and installing a Load Balancer
```
kubectl apply -f prereqs.yaml        
kubectl apply -f load-balancer.yaml
Create Kubernetes resources Sequence
This section will do the actual deployment of code and assign a service layer to that as well as configure the Traefik ingress Routers and Middleware

kubectl apply -f service.yaml
kubectl apply -f deployment.yaml
kubectl apply -f traefik-middlewares.yaml
kubectl apply -f traefik-ingressroutes.yaml
```
# now you can goto localhost and see the traefik admin interface
