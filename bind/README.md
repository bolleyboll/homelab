# [Bind](https://www.isc.org/bind/)

Bind is a DNS server software suite consisting of an implementation of the Domain Name System (DNS) protocols, a resolver library, and tools for verifying the proper operation of the DNS servers.

## Deployment

Build the Image

```bash
docker build ./bind/build/ -t internetsystemsconsortium/bind9:latest
```

Run the following command to deploy Bind9 to your swarm.

```bash
docker stack deploy -c ./bind/compose.yaml bind
```
