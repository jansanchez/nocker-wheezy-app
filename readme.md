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

## How to use with Docker Compose

### Set your local user (Very Important)

How do I know my linux username?
```
whoami
```

Go to `./docker/compose/supply.yml` and edit the line 9, replacing `your_host_user` for your linux username
```
1: version: '2'
2:
3: services:
4:   deps:
5:     image: js/node
6:     command: yarn install
7:     volumes:
8:       - ~/yarn_cache/:/tmp/cache/yarn/
9:       - ../../source/:/home/your_host_user/app/
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
[http://localhost:3000](http://localhost:3000)

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
[http://localhost:3000](http://localhost:3000)

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
