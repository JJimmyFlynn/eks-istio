#! /bin/sh
set -eou pipefail

aws eks update-kubeconfig --name fly-eks
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl apply -f ./k8s/argo-apps/
