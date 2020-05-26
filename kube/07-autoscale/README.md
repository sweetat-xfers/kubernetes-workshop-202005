# Chapter 7 - AutoScaling

## References
1. [Horizontal Pod Autoscaling Walkthrough](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/)
2. [Metrics Server](https://github.com/kubernetes-sigs/metrics-server)

## Steps

1. You need to have a clean kubernetes cluster
2. ```kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.3.6/components.yaml```
3. Test that this works by running 
  ```
  kubectl top nodes
  ```
4. Check ```kubectl logs deployment metrics-server``` for information
5. Follow steps in References #1