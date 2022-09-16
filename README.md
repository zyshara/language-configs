# LANGUAGE CONFIGS 【=◈︿◈=】
This repo hosts a series of scripts & docker configs to quickly get the websites listed below up and running.

## Supported Sites
  - https://www.shadowform.dev
  - https://www.akeosmusic.com
  - https://www.powerhousemgmt.com

## Setup
This setup uses nginx as a reverse proxy to direct traffic to a set of Node apps. Each node app has a respective git repo which is pulled via SSH. To get started, clone this repo onto your server and cd into the directory:
```
$ git clone git@github.com:zyshara/language-configs.git
$ cd language-configs
```

Use `ssh-keygen` to create a new SSH key named `github-ssh-key` inside of `language-configs`. Each app will copy this key into its container. Make sure you add the new key to github and that you're authenticated:
```
$ ssh-keygen ...
$ ssh -T git@github.com
```

## Dockerfiles
### nginx.Dockerfile
🚧 TODO 🚧

### webpack.Dockerfile
🚧 TODO 🚧
#### Setup

- `cp ~/.ssh/github ./github-ssh-key`
- `docker network create language`
- `docker-compose up -d --build`

### nodejs.Dockerfile
Deprecated! Do not use!
