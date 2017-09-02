# **nocker-wheezy-app**

A Boilerplate for a Simple Express Web Application build in Docker.

*Includes:*
- Docker
- Docker Compose
- NodeJS
- Yarn
- Nodemon
- ES2015
- Makefile

## Clone
```
git clone git@github.com:jansanchez/nocker-wheezy-app.git
```

## How to use with Docker Compose (video)

[![How to use the docker image nocker-wheezy?](http://img.youtube.com/vi/8KwZsF7bcfo/maxresdefault.jpg)](http://www.youtube.com/watch?v=8KwZsF7bcfo "How to use the docker image nocker-wheezy?")


### Set your local user (Very Important)

How do I know my linux username?
```
whoami
```

Go to `./docker/compose/supply.yml` and edit the line 9, replacing `__YOUR_HOST_USER__` for your linux username
```
1: version: '2'
2:
3: services:
4:   deps:
5:     image: js/node-wheezy
6:     command: yarn install
7:     volumes:
8:       - ~/yarn_cache/:/tmp/cache/yarn/
9:       - ../../source/:/home/__YOUR_HOST_USER__/app/
```


### Build & Install dependencies
```
./docker/scripts/setup.sh
```

### Up
```
docker-compose up
```

### So, Open your browser...
[http://localhost:3005](http://localhost:3005)

### Down
```
docker-compose down
```

### Only Build
```
./docker/scripts/build.sh
```

### Only Install dependencies
```
./docker/scripts/supply.sh
```

## Using the Makefile

### Build & Install dependencies
```
make setup
```

### Up
```
make up
```

### So, Open your browser...
[http://localhost:3005](http://localhost:3005)

### Command
```
make command "yarn upgrade"
```

```
make command "yarn install"
```

```
make command "yarn add express"
```

```
make command "yarn add -SD browser-sync"
```

### Down
```
make down
```

### Only Build
```
make build
```

### Only Install dependencies
```
make install
```

### Help
```
make
```
