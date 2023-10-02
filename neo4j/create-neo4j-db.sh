kubectl create ns neo4j

helm upgrade --install neo4j-1 neo4j/neo4j --namespace neo4j -f neo4j-values.yaml --recreate-pods
helm upgrade --install neo4j-2 neo4j/neo4j --namespace neo4j -f neo4j-values.yaml --recreate-pods
helm upgrade --install neo4j-3 neo4j/neo4j --namespace neo4j -f neo4j-values.yaml --recreate-pods

kubeclt apply -f ./neo4j-browser-ingress.yml
