# [Tempo](https://grafana.com/docs/tempo/latest/)

Tempo is cost-efficient and only requires an object storage to operate. Tempo is deeply integrated with Grafana, Mimir, Prometheus, and Loki. You can use Tempo with open source tracing protocols, including Jaeger, Zipkin, or OpenTelemetry.

## Deployment

Run the following command to deploy IT Tools to your swarm.

```bash
docker stack deploy -c ./tempo/compose.yaml tempo
```
