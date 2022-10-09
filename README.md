# argocd-lab

ArgoCD initial repo for lab environments

How to setup default request/limit for container
Need to add additional flag in values file in the project folder.
flag: useLimitRange: true
and describe request/limit for cpu and memory in the following format:
limits:
  default:
    cpu: "3500m"
    memory: "4Gi"
  request:
    cpu: "3500m"
    memory: "4Gi"
