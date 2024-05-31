kubectl apply -f http://problemsolving.hu/ckad/metrics-server-components.yaml


kubectl create ns bootcamp
kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1 -n bootcamp
kubectl create svc nodeport kubernetes-bootcamp --tcp=8080:8080 --node-port=30080 -n bootcamp

helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts && helm repo update  && \
   helm install my-kube-prometheus-stack prometheus-community/kube-prometheus-stack --version 57.2.1 --create-namespace -n monitoring -f http://problemsolving.hu/ckad/values-kps.yaml

kubectl create ns kali && kubectl run kali -n kali --image=kalilinux/kali-rolling --command -- sleep infinity

kubectl create ns test-busybox && kubectl run busybox --namespace=test-busybox \
                      --port=8280 \
                      --image=busybox \
                      -l=app=testbox \
                      -- sh -c "echo 'Hello' > /var/www/index.html && httpd -f -p 8280 -h /var/www/" && \
                     kubectl create svc nodeport -n test-busybox testbox --node-port=30280 --tcp=8280:8280


kubectl apply -f http://problemsolving.hu/ckad/busylogger-cm.yaml

kubectl apply -f http://problemsolving.hu/ckad/busylogger-pods.yaml