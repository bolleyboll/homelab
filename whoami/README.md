# [WhoAmI](https://github.com/traefik/whoami)

WhoAmI is a simple web server that returns the IP address of the client making the request.

## Deployment

Run the following command to deploy WhoAmI to your swarm.

```bash
docker stack deploy -c ./docker-compose.yml whoami
```
