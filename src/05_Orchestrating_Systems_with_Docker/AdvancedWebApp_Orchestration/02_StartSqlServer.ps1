docker run `
    -d `
    -p 14330:1433 `
    -e "ACCEPT_EULA=Y" `
    -e "SA_PASSWORD=P@ssword123!" `
    -v D:/DockerTraining/src/05_Orchestrating_Systems_with_Docker/AdvancedWebApp_Orchestration/SQL/CreateDatabase.sql:/AdvancedWebApp/CreateDatabase.sql `
    --network docker_training_network_advancedwebapp `
    --name docker_training_sqlserver `
    mcr.microsoft.com/mssql/server:2017-latest