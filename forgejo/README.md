# [Forgejo](https://forgejo.org/)

Forgejo is a hard fork of Gitea managed by the non-profit organization Codeberg, lightweight code hosting solution written in Go and published under the MIT license.

## Deployment

Edit the ENV Template

```bash
cp ./forgejo/env/forgejo.env.template ./forgejo/env/forgejo.env
```

Run the following command to deploy Grafana to your swarm.

```bash
export $(cat ./forgejo/env/forgejo.env) > /dev/null 2>&1; docker stack deploy -c ./forgejo/compose.yaml forgejo
```
