To run the Kubernetes Cluster we should make sure that swap shlould be disabled on the Master , HAProxy Nodes as well as Worker Node.

#!/bin/bash
swapoff -a
sed -i '/ swap / s/^/#/' /etc/fstab

