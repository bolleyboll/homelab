# [Immich](https://immich.app/)

Self-hosted photo and video management solution.

## Deployment

Edit the ENV Template

```bash
cp ./immich/env/immich.env.template ./immich/env/immich.env
```

Run the following command to deploy Immich to your swarm.

```bash
export $(cat ./immich/env/immich.env) > /dev/null 2>&1; docker stack deploy -c ./immich/compose.yaml immich
```
