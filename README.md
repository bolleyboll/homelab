# Homelab

This repo contains compose files for my homelab services.

## Initial Setup

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
docker stack deploy -c ./bind/docker-compose.yml bind
docker stack deploy -c ./traefik/docker-compose.yml traefik
export $(cat <env_file>) > /dev/null 2>&1; docker stack deploy -c docker-compose.yaml pihole
```

### Deploy Services

```bash
docker stack deploy -c ./<service>/docker-compose.yml <service_name>_
```

## Services

- [Bind9](https://www.isc.org/bind/)
- [Traefik](https://traefik.io/)
- [PiHole](https://pi-hole.net/)
