# Homelab

This repo contains compose files for my homelab services.

## Initial Setup

### Install Docker

Follow the instructions on the [Docker Docs](https://docs.docker.com/engine/install/)

### Swarm Init

```bash
docker swarm init --advertise-addr <ip>
```

### Swarm Join Workers

```bash
docker swarm join --token <token> <ip>
```

### Create Overlay Network

```bash
docker network create --driver=overlay homelab
```

### Create Bind9 Image

```bash
docker build .bind/build/ -t internetsystemsconsortium/bind9:latest
```

### Deploy Nessesary Services

```bash
docker stack deploy -c ./bind/docker-compose.yaml bind
docker stack deploy -c ./traefik/docker-compose.yaml traefik
export $(cat ./pihole/env/pihole.env) > /dev/null 2>&1; docker stack deploy -c docker-compose.yaml pihole
```

### Deploy Services

```bash
docker stack deploy -c ./<service>/docker-compose.yaml <service_name>_
```

## Guide to Deploying Services

- [Bind9](./bind/README.md)
- [Traefik](./traefik/README.md)
- [PiHole](./pihole/README.md)
- [Portainer](./portainer/README.md)
- [Immich](./immich/README.md)
- [Prometheus](./prometheus/README.md)
- [Grafana](./grafana/README.md)
- [cAdvisor](./cadvisor/README.md)
- [Node-Exporter](./node-exporter/README.md)
- [AlertManager](./alertmanager/README.md)
- [Uptime Kuma](./uptime-kuma/README.md)
