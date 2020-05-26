# Deployment

Demonstrate a deployment in kubernetes

# Howto

To run this

```bash
kubectl apply -f nginx-1.14.2.yaml
```

# Points of Interest

```bash
kubectl describe deployment nginx-deployment
kubectl get pods 
kubectl exec --interactive --tty <pod> -- /bin/sh

watch -n.1 "kubectl describe deployment nginx-deployment
```

In another terminal,

```bash
kubectl apply -f nginx-upgrade-1.18.0.yaml
```
