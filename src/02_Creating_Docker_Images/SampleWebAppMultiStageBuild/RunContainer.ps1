# Cleanup
docker container stop  docker_training_samplewebappmultistagebuild
docker container rm  docker_training_samplewebappmultistagebuild

# Run new container
docker container run -d -p 5010:5010 --name docker_training_samplewebappmultistagebuild tantsyurasergey/samplewebappmultistagebuild:1.0.0