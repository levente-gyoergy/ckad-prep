   helm repo add aqua https://aquasecurity.github.io/helm-charts/
   helm repo update

   helm install trivy-operator aqua/trivy-operator \
     --namespace trivy-system \
     --create-namespace \
     --version 0.21.4


pip install kube-hunter
# https://github.com/aquasecurity/kube-hunter?tab=readme-ov-file#run-from-source




kubectl krew install score

kubectl api-resources --verbs=list --namespaced -o name \
  | xargs -n1 -I{} bash -c "kubectl get {} --all-namespaces -oyaml && echo ---" \
  | kubectl score score -


helm repo add falcosecurity https://falcosecurity.github.io/charts  
helm repo update  
helm install falco -f values.yaml falcosecurity/falco