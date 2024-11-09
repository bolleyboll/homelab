# [XMRig](https://xmrig.com/)

High performance, open source, cross-platform RandomX, KawPow, CryptoNight and GhostRider CPU/GPU miner, RandomX benchmark, and stratum proxy.

## Deployment

Build the Image

```bash
docker build ./xmrig/build/ -t xmrig:latest
```

Run the following command to deploy XMRig to your swarm.

```bash
docker stack deploy -c ./xmrig/compose.yaml xmrig
```
