# [Immich](https://immich.app/)

Self-hosted photo and video management solution.

## Deployment

Edit the ENV Template

```bash
cp ./env/immich.env.template ./env/immich.env
```

Run the following command to deploy Immich to your swarm.

```bash
export $(cat ./env/immich.env) > /dev/null 2>&1; docker stack deploy -c ./docker-compose.yaml immich
```
