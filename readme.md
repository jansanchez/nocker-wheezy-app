# **nocker-wheezy**

A Boilerplate of Project with Node.js

## Clone
```
git clone git@github.com:jansanchez/nocker-app.git
```

## How to use with Docker Compose

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
