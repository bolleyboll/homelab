# [Authelia](https://www.authelia.com)

Authelia is a 2FA & SSO authentication server which is dedicated to the security of applications and users.

## Deployment

Build the Image

```bash
docker build ./authelia/build/ -t authelia/authelia:latest
```

Run the following command to deploy Authelia to your swarm.

```bash
docker stack deploy -c ./authelia/compose.yaml authelia
```
