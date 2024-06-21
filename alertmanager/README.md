# [Alertmanager](https://prometheus.io/docs/alerting/latest/alertmanager/)

The Alertmanager handles alerts sent by client applications such as the Prometheus server. It takes care of deduplicating, grouping, and routing them to the correct receiver integration such as email, PagerDuty, or OpsGenie. It also takes care of silencing and inhibition of alerts.

## Deployment

Edit the Config Template

```bash
cp ./alertmanager/config/config.yaml.template ./alertmanager/config/config.yaml
```

Run the following command to deploy Immich to your swarm.

```bash
docker stack deploy -c ./alertmanager/docker-compose.yaml alertmanager
```
