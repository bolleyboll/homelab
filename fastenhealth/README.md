# [Fasten Health](https://github.com/fastenhealth/fasten-onprem)

Fasten is an open-source, self-hosted, personal/family electronic medical record aggregator, designed to integrate with 100,000's of insurances/hospitals/clinics.

## Deployment

Edit the ENV Template

```bash
cp ./fastenhealth/env/fastenhealth.env.template ./fastenhealth/env/fastenhealth.env
```

Run the following command to deploy Fasten Health to your swarm.

```bash
export $(cat ./fastenhealth/env/fastenhealth.env) > /dev/null 2>&1; docker stack deploy -c ./fastenhealth/compose.yaml fastenhealth
```
