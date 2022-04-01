kubectl create ns hydra || true
helm -n hydra upgrade --install postgres bitnami/postgresql -f ~/Code/misc/minikube/hydra/postgres.yaml
helm -n hydra upgrade --install hydra-example-idp ory/example-idp -f ~/Code/misc/minikube/hydra/hydra-example-idp.yaml
helm -n hydra upgrade --install hydra-example ory/hydra -f ~/Code/misc/minikube/hydra/hydra-overrides.yaml

