docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=P@ssword123!" -p 14330:1433 -d --name docker_traning_sqlserver mcr.microsoft.com/mssql/server:2017-latest