# [Traefik](https://traefik.io/)

Traefik is a modern HTTP reverse proxy and load balancer that makes deploying microservices easy. Traefik integrates with your existing infrastructure components (Docker, Swarm mode, Kubernetes, Marathon, Consul, Etcd, Rancher, Amazon ECS, ...) and configures itself automatically and dynamically.

## Deployment

Run the following command to deploy Traefik to your swarm.

```bash
docker stack deploy -c ./traefik/compose.yaml traefik
```
