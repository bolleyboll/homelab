# [Adminer](https://www.adminer.org)

Adminer (formerly phpMinAdmin) is a full-featured database management tool written in PHP. Conversely to phpMyAdmin, it consist of a single file ready to deploy to the target server. Adminer is available for MySQL, MariaDB, PostgreSQL, SQLite, MS SQL, Oracle, Firebird, SimpleDB, Elasticsearch and MongoDB.

## Deployment

Run the following command to deploy Adminer to your swarm.

```bash
docker stack deploy -c ./adminer/compose.yaml adminer
```
