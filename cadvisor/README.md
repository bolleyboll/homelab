# [cAdvisor](https://github.com/google/cadvisor)

Analyzes resource usage and performance characteristics of running containers.

## Deployment

Run the following command to deploy cAdvisor to your swarm.

```bash
docker stack deploy -c ./cadvisor/docker-compose.yaml cadvisor
```
