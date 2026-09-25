git clone https://github.com/iam-veeramalla/go-web-app.git
sudo dnf update -y
sudo dnf install docker -y
sudo systemctl enable --now docker
sudo usermod -aG docker ec2-user
newgrp docker
curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
curl -Lo kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64
chmod +x kind
sudo mv kind /usr/local/bin/
docker --version
kubectl version --client
kind version
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
free -h
du -sh
du -sh /
df -h
free -h
sudo yum install git -y
git --version
git config --global user.name "Debjani Sadhukhan"
git config --global user.email "debjanisadhukhan089@gmail.com"
git config list
git clone https://github.com/iam-veeramalla/go-web-app.git
ls
cd go-web-app
ls
go build -o main .
sudo yum install golang -y
go version
free -h
df -h
go build -o main .
ls
./main
vim Dockerfile
ls
nano Dockerfile
ls
docker build -t debjanisadhukhan/go-web-app:v1 .
ls
cat go.mod
nano Dockerfile
docker build -t debjanisadhukhan/go-web-app:v1 .
docker images
docker run -it -p 8080:8080 debjanisadhukhan/go-web-app:v1
docker run -it debjanisadhukhan/go-web-app:v1
docker ps
mkdir -p kind/manifests
ls
cd kind/manifests/
ls
touch deployment.yaml
ls
nano deployment.yaml 
ls
nano service.yaml
ls
cat service.yaml 
nano ingress.yaml
ls
# 1. Download and extract the latest release for your system (AMD64)
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH
curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"
# 2. Move the extracted binary to your system PATH (/usr/local/bin)
sudo tar -xzf eksctl_$PLATFORM.tar.gz -C /usr/local/bin
# 3. Clean up the downloaded archive file
rm eksctl_$PLATFORM.tar.gz
eksctl version
# 1. Download the installation package
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
# 2. Unzip the package (install unzip if it's not already there)
sudo yum install -y unzip
unzip awscliv2.zip
# 3. Run the automated install script
sudo ./aws/install
aws --version
df -h
aws configure
eksctl create cluster --name demo-cluster --region ap-south-1
eksctl delete cluster --region=ap-south-1 --name=demo-cluster
eksctl create cluster --name demo-cluster --region ap-south-1 --node-type t3.small --nodes 2
ls
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get pods
kubectl get nodes
kubectl get nodes -o wide
kubectl get deploy
kubectl get svc
kubectl get endpoints
aws eks describe-cluster --name demo-cluster --region ap-south-1
eksctl get cluster --region ap-south-1
kubectl get endpoints
kubectl get pods -A
kubectl apply -f ingress.yaml 
kubectl get ingress
kubectl get svc
kubectl edit svc go-web-app
nano service.yaml
kubectl apply -f service.yaml
kubectl get svc
kubectl get nodes -o wide
kubectl get pods
kubectl get pods -n kube-system
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.11.1/deploy/static/provider/aws/deploy.yaml
kubectl get pods -n kube-system
kubectl get pods -n ingress-nginx
kubectl get ing
kubectl edit svc ingress-nginx-controller -n ingress-nginx
kubectl patch svc ingress-nginx-controller -n ingress-nginx -p 'spec: {"type": "LoadBalancer"}'
kubectl get ing
kubectl get svc/ingress-nginx-controller -n ingress-nginx
kubectl port-forward svc/ingress-nginx-controller -n ingress-nginx 8080:80
kubectl port-forward --address 0.0.0.0 svc/ingress-nginx-controller -n ingress-nginx 8080:80
sudo nano /etc/hosts
kubectl port-forward --address 0.0.0.0 svc/ingress-nginx-controller -n ingress-nginx 8080:80
kubectl get svc/ingress-nginx-controller -n ingress-nginx
nslookup aac9d4f160da642bf9bb800d63d1ed46-ca2e11bab92dbc27.elb.ap-south-1.amazonaws.com
sudo nano /etc/hosts
cat service.yaml
ls
cd go-web-app
ls
cd kind/manifests/
la
ls
cat service.yaml 
nano service.yaml 
kubectl apply -f service.yaml 
kubectl get deploy
kubectl get svc
nano ingress.yaml 
kubectl apply -f ingress.yaml 
kubectl get svc/ingress-nginx-controller -n ingress-nginx
cat service.yaml 
cat ingress.yaml 
sudo nano /etc/hosts
nslookup aac9d4f160da642bf9bb800d63d1ed46-ca2e11bab92dbc27.elb.ap-south-1.amazonaws.com
sudo nano /etc/hosts
kubectl get svc ingress-nginx-controller -n ingress-nginx
kubectl get pods -n ingress-nginx -o wide
kubectl get nodes -o wide
kubectl scale deployment ingress-nginx-controller -n ingress-nginx --replicas=2
kubectl get pods -n ingress-nginx -o wide
curl -H "Host: go-web-app.local" http://aac9d4f160da642bf9bb800d63d1ed46-ca2e11bab92dbc27.elb.ap-south-1.amazonaws.com/courses
kubectl port-forward --address 0.0.0.0 svc/ingress-nginx-controller -n ingress-nginx 8080:80
sudo nano /etc/hosts
kubectl get pods -n ingress-nginx -o wide
cat service.yaml 
cat ingress.yaml 
kubectl get pods -n ingress-nginx -o wide
kubectl get svc ingress-nginx-controller -n ingress-nginx
kubectl port-forward --address 0.0.0.0 svc/ingress-nginx-controller -n ingress-nginx 8080:80
curl -H "Host: go-web-app.local" http://localhost:8080/courses
kubectl port-forward --address 0.0.0.0 svc/ingress-nginx-controller -n ingress-nginx 8080:80
curl -H "Host: go-web-app.local" http://localhost:8080/courses
nslookup aac9d4f160da642bf9bb800d63d1ed46-ca2e11bab92dbc27.elb.ap-south-1.amazonaws.com
sudo nano /etc/hosts
curl -Iv http://aac9d4f160da642bf9bb800d63d1ed46-ca2e11bab92dbc27.elb.ap-south-1.amazonaws.com/courses
curl -H "Host: go-web-app.local" http://localhost:8080/courses
curl -Iv http://aac9d4f160da642bf9bb800d63d1ed46-ca2e11bab92dbc27.elb.ap-south-1.amazonaws.com/courses
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm version
helm create go-web-app-chart
ls
cd go-web-app-chart
ls
cd charts
ls
cd ..
cd templates
ls
rm -rf *
ls
cp kind/manifests/* go-web-app-chart/templates/
cd ..
ls
cd go-web-app
ls
cp kind/manifests/* go-web-app-chart/templates/
cd ..
cp go-web-app/kind/manifests/* go-web-app-chart/templates/
cp -r go-web-app/kind/manifests/* go-web-app-chart/templates/
cd go-web-app-chart/
cd templates/
ls
nano deployment.yaml 
kubectl get all
kubectl delete deploy go-web-app
kubectl delete svc go-web-app
kubectl delete ing go-web-app
kubectl get all
cd ..
ls
cd ..
ls
cd go-web-app-chart/
ls
nano values.yaml 
cd ..
ls
helm install go-web-app ./go-web-app-chart
cd go-web-app-chart/
l
sls
ls
cd templates/
ls
rm awscliv2.zip aws
rm awscliv2.zip 
ls
rmdir aws
rm -r aws
ls
cd ..
helm install go-web-app ./go-web-app-chart
kubectl get deploy
kubectl get svc
kubectl get ingress
kubectl edit deploy go-web-app
helm uninstall go-web-app
kubectl get all
sudo nano etc/hosts
ls
cd go-web-app
ls
cd kind/manifests/
sudo nano /etc/hosts
curl http://go-web-app.local/courses
kubectl get pods -n ingress-nginx
kubectl get svc -n ingress-nginx
nslookup ac9d4f160da642bf9bb800d63d1ed46-ca2e11bab92dbc27.elb.ap-south-1.amazonaws.co
nslookup ac9d4f160da642bf9bb800d63d1ed46-ca2e11bab92dbc27.elb.ap-south-1.amazonaws.com
