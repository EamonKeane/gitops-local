helm repo add argo https://argoproj.github.io/argo-helm

helm upgrade --install \
    argocd argo/argo-cd \
    --namespace argocd \
    --create-namespace \
    --values /Users/eamonkeane/Code/misc/minikube/argocd/values.yaml \
    --wait
