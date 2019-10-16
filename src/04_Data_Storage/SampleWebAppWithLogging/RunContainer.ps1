# Cleanup
docker container stop  docker_training_samplewebapp
docker container rm  docker_training_samplewebapp

# Run new container
docker container run -d -p 5000:5000 -v c:/docker/logs:/app/logs tantsyurasergey/samplewebapp:1.0.2