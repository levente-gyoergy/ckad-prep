export NODE_PORT="$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')"

search kube-system.svc.cluster.local svc.cluster.local cluster.local
options ndots:5

/metrics-server \
        --kubelet-insecure-tls \
        --kubelet-preferred-address-types=InternalIP \
        --cert-dir=/tmp \
        --secure-port=10250 \
        --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname \
        --kubelet-use-node-status-port  \
        --metric-resolution=15s  \

kubectl run curl  --rm -it  --image=alpine/curl -- -fsSL https:///:"$(k get svc -n kube-system metrics-server  -o go-template='{{(index .spec.ports 0).Port}}')"