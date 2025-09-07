# [InfluxDB](https://www.influxdata.com/)

InfluxDB is a time series database (TSDB) developed by the company InfluxData. It is used for storage and retrieval of time series data.

## Deployment

Edit the ENV Template

```bash
cp ./influxdb/env/influxdb.env.template ./influxdb/env/influxdb.env
```

Run the following command to deploy InfluxDB to your swarm.

```bash
export $(cat ./influxdb/env/influxdb.env) > /dev/null 2>&1; docker stack deploy -c ./influxdb/compose.yaml influxdb
```
