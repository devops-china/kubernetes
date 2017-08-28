#!/usr/bin/env bash

# Do auth and create project
gcloud auth login

if gcloud projects describe asia-project-wayde191 > /dev/null; then
  echo 'Project asia-project-wayde191 is created...'
else
  pgcloud projects create asia-project-wayde191 --name=asia-project
fi

gcloud config set project asia-project-wayde191
gcloud config list
gcloud compute project-info describe --project asia-project-wayde191

gcloud container clusters get-credentials second-asia-cluster -z asia-northeast1-a

gcloud compute firewall-rules create my-income-rule --allow tcp:20000-40000
gcloud compute firewall-rules list

cd terraform
terraform init
terraform plan
terraform apply

kubectl get pods --namespace=kube-system

# Pod and service for redis
kubectl apply -f ./redis-master-deployment.yaml
kubectl get pods

kubectl apply -f ./redis-master-service.yaml
kubectl get service

# Pod and service for frontend
kubectl apply -f ./run-my-idea.yaml
kubectl get pods
kubectl get service


#kubectl exec -it my-idea-920194621-l8pr3 -c my-idea bash
#kubectl attach curl-57077659-pk9jz -c curl -i -t
#nslookup my-redis

#kubectl delete deployments,svc my-idea; kubectl create -f ./terraform/run-my-idea.yaml

kubectl get svc frontend -o yaml | grep nodePort -C 5
kubectl get nodes -o yaml | grep ExternalIP -C 1
