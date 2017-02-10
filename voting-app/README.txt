#Init the swarm - create the manager on the cerrent node
docker swarm init

#Deploy a atack named "vote" using the docker compose file docker-stack.yml
docker stack deploy --compose-file docker-stack.yml vote

#Check the stack vote services 
docker stack services vote 

#To vote - go to http://localhost:5000
#To see result go to http://localhost:5001

#To visualize the swarm nodes and each services in each node
docker run -it -d -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock manomarks/visualizer

#To see the visualization, go to http://localhost:8080/

#To stop the swarm cluster
docker swarm leave -f
