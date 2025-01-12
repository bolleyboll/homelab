# [Loki](https://grafana.com/oss/loki/)

Loki is a horizontally scalable, highly available, multi-tenant log aggregation system inspired by Prometheus. It is designed to be very cost effective and easy to operate. It does not index the contents of the logs, but rather a set of labels for each log stream.

## Deployment

Run the following command to deploy Loki to your swarm.

```bash
docker stack deploy -c ./loki/compose.yaml loki
```
