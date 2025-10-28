# [Maria DB](https://mariadb.org/)

MariaDB Server is a high performing open source relational database, forked from MySQL.

## Deployment

Edit the ENV Template

```bash
cp ./mariadb/env/mariadb.env.template ./mariadb/env/mariadb.env
```

Run the following command to deploy Maria DB to your swarm.

```bash
export $(cat ./mariadb/env/mariadb.env) > /dev/null 2>&1; docker stack deploy -c ./mariadb/compose.yaml mariadb
```

## Updating Maria DB

Exec into the running container.

```bash
mariadb
GRANT ALL PRIVILEGES ON *.* TO '%'@'%'
  IDENTIFIED BY 'password' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EXIT;
```
