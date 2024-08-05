# [PostgreSQL](https://www.postgresql.org/)

PostgreSQL is a powerful, open source object-relational database system with over 35 years of active development that has earned it a strong reputation for reliability, feature robustness, and performance.

## Deployment

Edit the ENV Template

```bash
cp ./postgres/env/postgres.env.template ./postgres/env/postgres.env
```

Run the following command to deploy PostgreSQL to your swarm.

```bash
export $(cat ./postgres/env/postgres.env) > /dev/null 2>&1; docker stack deploy -c ./postgres/compose.yaml postgres
```
