# [Apache Flink](https://flink.apache.org/)

Apache Flink is a framework and distributed processing engine for stateful computations over unbounded and bounded data streams. Flink has been designed to run in all common cluster environments, perform computations at in-memory speed and at any scale.

## Deployment

Build the Image

Run the following command to deploy Flink to your swarm.

```bash
docker stack deploy -c ./flink/compose.yaml flink
```
