# [Smokeping](https://docs.linuxserver.io/images/docker-smokeping/)

SmokePing is a deluxe latency measurement tool. It can measure, store and display latency, latency distribution and packet loss. SmokePing uses RRDtool to maintain a longterm data-store and to draw pretty graphs, giving up to the minute information on the state of each network connection.

## Deployment

Run the following command to deploy SmokePing to your swarm.

```bash
docker stack deploy -c ./smokeping/compose.yaml smokeping
```
