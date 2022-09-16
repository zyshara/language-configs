# LANGUAGE CONFIGS 【=◈︿◈=】
This repo hosts a series of scripts & docker configs to quickly get the websites listed below up and running.

## Supported Sites
  - https://www.shadowform.dev
  - https://www.akeosmusic.com
  - https://www.powerhousemgmt.com

## Setup
This setup uses nginx as a reverse proxy to direct traffic to a set of Node apps. Each node app has a respective git repo which is pulled via SSH. To get started, clone this directory onto your server and create a new SSH key:
```
$ git clone git@github.com:zyshara/language-configs.git
$ cd language-configs
```

Create a new file called `github-ssh-key` and copy the contents of your newly created private key:
```
$ touch github-ssh-key
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

### reactjs.Dockerfile
Deprecated! Do not use!
