(cd k8s-kind ; ./create-kind-cluster.sh)

k apply -k ./k8s-dashboard

(cd neo4j; ./create-neo4j-db.sh)
