# [Semaphore](https://semaphoreui.com/)

Semaphore is a modern UI for Ansible, Terraform, OpenTofu, Bash, Pulumi.

## Deployment

Edit the ENV Template

```bash
cp ./semaphore/env/semaphore.env.template ./semaphore/env/semaphore.env
```

Run the following command to deploy PostgreSQL to your swarm.

```bash
export $(cat ./semaphore/env/semaphore.env) > /dev/null 2>&1; docker stack deploy -c ./semaphore/compose.yaml semaphore
```
