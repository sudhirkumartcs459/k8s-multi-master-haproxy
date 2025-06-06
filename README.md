# Kubernetes HA Cluster with CRI-O and HAProxy

This repo contains a step-by-step setup to build a 3-master Kubernetes HA cluster using:
- **CRI-O** container runtime
- **HAProxy** load balancer
- **Flannel CNI**
- **Ubuntu 22.04** on AWS EC2

## Structure

- `infrastructure/` – AWS setup and networking prerequisites
- `setup/` – Scripts to prepare nodes
- `haproxy/` – HAProxy configuration
- `hosts/` – Example /etc/hosts file
- `kubeadm/` – Kubeadm init/join command examples
