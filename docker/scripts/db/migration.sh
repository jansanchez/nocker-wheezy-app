#! /bin/bash

if [ ! -f ./db/wsa.sql ]; then
	docker-compose up -d mysql
	echo "Running Mysql..."
	sleep 15
	cat ./db/jobs.sql | docker exec --privileged -i mysql_1 /usr/bin/mysql -u root --password=123456 jobs
	echo "Migration complete."
	docker-compose stop mysql
	docker-compose down
fi
