# Run new container
docker container run `
    -d `
    -p 5020:5020 `
    -e AdvancedWebApp_ConnectionStrings__AdvancedWebAppDb='Data Source=docker_training_sqlserver;Initial Catalog=AdvancedWebAppDb;User ID=sa;Password=P@ssword123!' `
    --network docker_training_network_advancedwebapp `
    --name docker_training_advancedwebapp `
    tantsyurasergey/advancedwebapp:1.0.0