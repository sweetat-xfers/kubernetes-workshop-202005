# Chapter 7 - AutoScaling

## References
1. [Horizontal Pod Autoscaling Walkthrough](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/)
2. [Metrics Server](https://github.com/kubernetes-sigs/metrics-server)

## Steps

1. You need to have a clean kubernetes cluster
2. Install metrics-server

  ```bash
  kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.3.6/components.yaml
  ```

3. Edit the metrics-server and add the args "--kubelet-insecure-tls"

  ```bash
  kubectl edit -n kube-system deployment metrics-server
  ```

4. Test that this works by running 

  ```
  kubectl top nodes
  ```

5. Check that the metrics-server is running

  ```bash
  kubectl logs deployment metrics-server
  ```

6. Follow steps in References #1