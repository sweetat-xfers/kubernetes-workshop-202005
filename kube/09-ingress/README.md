# Ingress

## Reference

1. [Nginx Ingress Controller](https://kubernetes.github.io/ingress-nginx/deploy/)

## How to

### Ingress Controller
Set up an ingress controller first

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-0.32.0/deploy/static/provider/cloud/deploy.yaml
```

### 01-ingress-simple

```bash
cd ../04-services
kubectl apply -k ./
kubectl apply -f 01-ingress-simple.yaml
```

### 02-ingress-fanout

```bash
kubectl delete -f 01-ingress-simple.yaml
cd ../04-services
kubectl delete -k ./

cd ../09-ingress
kubectl apply -k .
```

### 03-ingress-fanout

```bash
kubectl delete -k .

cp 03-kustomization.yaml kustomization.yaml
kubectl apply -k .
```