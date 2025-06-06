As we are using the Cri-o runtine( very lightweight runtime) so this should be installed on all the Nodes including All the Master , HAProxy and Worker Nodes.

Below are the steps to configure the cri-o on all the Nodes.

Define the CRI-O stream version.
#CRIO_VERSION=v1.32

Install the dependencies for adding repositories
#apt-get update
#apt-get install -y software-properties-common curl

Add the CRI-O repository.
#curl -fsSL https://download.opensuse.org/repositories/isv:/cri-o:/stable:/$CRIO_VERSION/deb/Release.key |
    gpg --dearmor -o /etc/apt/keyrings/cri-o-apt-keyring.gpg
#echo "deb [signed-by=/etc/apt/keyrings/cri-o-apt-keyring.gpg] https://download.opensuse.org/repositories/isv:/cri-o:/stable:/$CRIO_VERSION/deb/ /" |
    tee /etc/apt/sources.list.d/cri-o.list


Install the packages
#apt-get update
#apt-get install -y cri-o


Start CRI-O
#systemctl start crio.service
    
