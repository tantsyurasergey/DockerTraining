# Run new container
docker container run `
    -d `
    -p 5020:5020 `
    --network docker_training_network_advancedwebapp `
    --name docker_training_advancedwebapp `
    tantsyurasergey/advancedwebapp:1.0.0