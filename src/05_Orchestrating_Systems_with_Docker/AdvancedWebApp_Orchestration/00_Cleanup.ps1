docker container stop docker_training_grafana
docker container stop docker_training_prometheus
docker container stop docker_training_advancedwebapp
docker network rm docker_training_network_advancedwebapp
docker system prune
