# [Alloy](https://grafana.com/docs/alloy/latest/)

Alloy offers native pipelines for OTel, Prometheus, Pyroscope, Loki, and many other metrics, logs, traces, and profile tools. In addition, you can use Alloy pipelines to do different tasks, such as configure alert rules in Loki and Mimir. Alloy is fully compatible with the OTel Collector, Prometheus Agent, and Promtail. You can use Alloy as an alternative to either of these solutions or combine it into a hybrid system of multiple collectors and agents. You can deploy Alloy anywhere within your IT infrastructure and pair it with your Grafana stack, a telemetry backend from Grafana Cloud, or any other compatible backend from any other vendor. Alloy is flexible, and you can easily configure it to fit your needs in on-prem, cloud-only, or a mix of both.

## Deployment

Run the following command to deploy Alloy to your swarm.

```bash
docker stack deploy -c ./alloy/compose.yaml alloy
```
