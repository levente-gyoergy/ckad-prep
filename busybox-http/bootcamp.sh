k create ns bootcamp
kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1 -n bootcamp --replicas=3 


### in a second terminal, enablew kube proxy
curl http://localhost:8001/version 

more commands: https://kubernetes.io/docs/tutorials/kubernetes-basics/deploy-app/deploy-intro/#deploy-an-app

kubectl create svc nodeport kubernetes-bootcamp --type="NodePort" --tcp=8080:8080 --node-port=30080 -n bootcamp
