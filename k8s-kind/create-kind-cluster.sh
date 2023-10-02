kind create cluster --config ./kind-config.yml

kubectl apply -k .

kubectl wait --namespace metallb-system \
                --for=condition=ready pod \
                --selector=app=metallb \
                --timeout=90s

kubectl apply -f kind-metallb-config.yml
