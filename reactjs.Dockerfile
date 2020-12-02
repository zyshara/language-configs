FROM node:12.18.4-alpine

RUN apk add --no-cache git openssh-client

WORKDIR /home
COPY github-ssh-key /home/github
RUN chmod 600 /home/github
RUN mkdir -p ~/.ssh

ARG GIT_REPO
RUN echo $GIT_REPO
RUN eval `ssh-agent` \
    && ssh-add /home/github \
    && ssh-keyscan github.com > ~/.ssh/known_hosts \
    && git clone $GIT_REPO /home/app

WORKDIR /home/app
RUN npm install
RUN npm run build

CMD ["npm", "run", "start-client"]
