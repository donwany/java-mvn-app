# java-mvn-app

# install docker plugins on jenkins

# install maven plugins on jenkins

# connect docker-hub to jenkins

# setup credentials on jenkins

# run jar
 -  java -cp target/java-mvn-app-1.0-SNAPSHOT.jar io.aerogramme.App 
 
# install docker
Installing Docker CE on Ubuntu:

Update Ubuntu Libraries
>sudo apt-get update

#Add HTTPS
#>sudo apt-get install \
#    apt-transport-https \
#    ca-certificates \
#    curl \
#    gnupg-agent \
#    software-properties-common
    
#Add Docker’s official GPG key:
#>curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add Docker APT Repository for Ubuntu:
#>sudo add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable"
   
#Update APT package index
#>sudo apt-get update

Install Latest version of Docker CE
>sudo apt-get install docker-ce

Or try this
>sudo apt-get install docker.io

Check if docker service is running
>sudo systemctl status docker

If not running, start it
>sudo systemctl start docker

Check if Docker is installed
>docker version

Add ubuntu user to docker user group
>sudo usermod -aG docker ubuntu

or if running on Vagrant
>sudo usermod -aG docker vagrant

Open a new Terminal (duplicate Putty session)
Check by running Docker hello-world image

>docker run -it hello-world
>
# install kubernetes
Install Kubectl

>curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
>echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
>sudo apt-get update
>sudo apt-get install -y kubectl

Check kubectl version
>kubectl version

Install Minikube
>curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
>sudo install minikube /usr/local/bin

Start Minikube single node cluster with out specifying any VM Driver
>sudo minikube start --vm-driver=none 

All configurations will be in ~/.kube & ~/.minikube folders
Change their permissions so that its available to ubuntu user (so that ubuntu user can run kubectl commands)
>sudo chown -R $USER $HOME/.kube $HOME/.minikube

Get cluster info using kubectl
>kubectl get nodes

Let us run a sample deployment & check our set up
>kubectl run hello-minikube --image=gcr.io/google_containers/echoserver:1.4 --port=8080
>kubectl expose deployment hello-minikube  --type=NodePort

>kubectl get pod
>minikube service hello-minikube 

This will open up a web browser and hit the service URL
If everything is OK, let us delete our deployment & service
>kubectl delete deployment hello-minikube
>kubectl delete svc hello-minikube