# [Pi-Hole](https://pi-hole.net/)

Pi-hole is a Linux network-level advertisement and Internet tracker blocking application which acts as a DNS sinkhole and optionally a DHCP server, intended for use on a private network.

## Deployment

Edit the ENV Template

```bash
cp ./pihole/env/pihole.env.template ./pihole/env/pihole.env
```

Run the following command to deploy Pihole to your swarm.

```bash
export $(cat ./pihole/env/pihole.env) > /dev/null 2>&1; docker stack deploy -c ./pihole/docker-compose.yaml pihole
```
