# AWS Infrastructure Setup for Kubernetes HA

## EC2 Instances
- 3x Master Nodes: Ubuntu 22.04 (t2.medium or higher)
- 1x HAProxy Load Balancer Node
- (Optional) Additional Worker Nodes


## Security Group Rules
Open the following **inbound ports**:
- TCP 22 – SSH
- TCP 6443 – Kubernetes API server
- TCP 2379-2380 – etcd
- TCP 10250-10252 – Kubelet/controller/scheduler
- TCP 30000-32767 – NodePort range
- UDP 8472 – Flannel

Inter-node communication and HAProxy to master access on port 6443 must be allowed.
