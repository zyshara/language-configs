# LANGUAGE CONFIGS
## Configs for zyara's hosted websites
These are configs to setup a subset of Zyara websites easily on a given server via Docker. In order to get this working, we need to generate
ssh keys on the given server, attach it to github, and copy the private key into the root directory of language configs so the key can be given to
each individual docker container.

### Setup

- `cp ~/.ssh/github ./github-ssh-key`

- `docker network create language`

- `docker-compose up -d --build`
