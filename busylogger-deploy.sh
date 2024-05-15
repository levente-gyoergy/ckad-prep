# create workdir on the hosts
mkdir -p  /var/volumes/busylogger/www 

kubectl apply -f http://problemsolving.hu/ckad/busylogger-cm.yaml

kubectl apply -f http://problemsolving.hu/ckad/busylogger-pods.yaml

