docker run `
    -d `
    -p 3000:3000 `
    -v D:/DockerTraining/src/05_Orchestrating_Systems_with_Docker/AdvancedWebApp_Orchestration/Grafana/provisioning:/etc/grafana/provisioning `
    -v D:/DockerTraining/src/05_Orchestrating_Systems_with_Docker/AdvancedWebApp_Orchestration/Grafana/dashboards:/var/lib/grafana/dashboards `
    --network docker_training_network_advancedwebapp `
    --name docker_training_grafana `
    grafana/grafana