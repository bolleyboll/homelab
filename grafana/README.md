# [Grafana](https://grafana.com/)

The open and composable observability and data visualization platform. Visualize metrics, logs, and traces from multiple sources like Prometheus, Loki, Elasticsearch, InfluxDB, Postgres and many more.

## Deployment

Edit the ENV Template

```bash
cp ./grafana/env/grafana.env.template ./grafana/env/grafana.env
```

Run the following command to deploy Grafana to your swarm.

```bash
export $(cat ./grafana/env/grafana.env) > /dev/null 2>&1; docker stack deploy -c ./grafana/compose.yaml grafana
```
