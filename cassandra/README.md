# [Cassandra](https://cassandra.apache.org/_/index.html)

Apache Cassandra is an open source NoSQL distributed database trusted by thousands of companies for scalability and high availability without compromising performance. Linear scalability and proven fault-tolerance on commodity hardware or cloud infrastructure make it the perfect platform for mission-critical data.

## Deployment

Run the following command to deploy cAdvisor to your swarm.

```bash
docker stack deploy -c ./cassandra/compose.yaml cassandra
```
