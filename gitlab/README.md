# [GitLab](https://about.gitlab.com/)

GitLab Inc. is an open-core company that operates GitLab, a DevOps software package that can develop, secure, and operate software. GitLab includes a distributed version control based on Git, including features such as access control, bug tracking, software feature requests, task management, and wikis for every project, as well as snippets.

## Deployment

Run the following command to deploy GitLab to your swarm.

```bash
docker stack deploy -c ./gitlab/compose.yaml gitlab
```
