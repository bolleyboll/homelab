# [Pi-Hole](https://pi-hole.net/)

Pi-hole is a Linux network-level advertisement and Internet tracker blocking application which acts as a DNS sinkhole and optionally a DHCP server, intended for use on a private network.

## Deployment

Edit the ENV Template

```bash
cp ./env/pihole.env.template ./env/pihole.env
```

Run the following command to deploy Pihole to your swarm.

```bash
export $(cat ./env/pihole.env) > /dev/null 2>&1; docker stack deploy -c ./docker-compose.yaml pihole
```
