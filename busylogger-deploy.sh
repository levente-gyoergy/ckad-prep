# create workdir on the hosts
mkdir -p  /var/volumes/busylogger/www 

kubectl apply -f https://github.com/levente-gyoergy/ckad-prep/blob/main/busylogger-cm.yaml

kubectl apply -f http://problemsolving.hu/ckad/busylogger-pods.yaml

