docker run `
    -d `
    -p 9090:9090 `
    -v D:/DockerTraining/src/05_Orchestrating_Systems_with_Docker/AdvancedWebApp_Orchestration/Prometheus/prometheus.yml:/etc/prometheus/prometheus.yml `
    --network docker_training_network_advancedwebapp `
    --name docker_training_prometheus `
    prom/prometheus