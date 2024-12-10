# [Gitea](https://about.gitea.com/)

Gitea is a forge software package for hosting software development version control using Git as well as other collaborative features like bug tracking, code review, continuous integration, kanban boards, tickets, and wikis. It supports self-hosting but also provides a free public first-party instance. It is a fork of Gogs and is written in Go. Gitea can be hosted on all platforms supported by Go including Linux, macOS, and Windows. The project is funded on Open Collective.

## Deployment

Edit the ENV Template

```bash
cp ./gitea/env/gitea.env.template ./gitea/env/gitea.env
```

Run the following command to deploy Grafana to your swarm.

```bash
export $(cat ./gitea/env/gitea.env) > /dev/null 2>&1; docker stack deploy -c ./gitea/compose.yaml gitea
```