docker rmi -f container_to_test 
docker-compose build --no-cache
docker run -i -t container_to_test:latest /bin/bash