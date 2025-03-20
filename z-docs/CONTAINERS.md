# falco-baseline


docker-compose down
docker-compose pull
docker-compose up -d --build

docker-compose down -v
docker-compose up -d --build

docker-compose down -v --rmi all


docker build --no-cache -t nombre-imagen .

docker-compose up -d --build

docker-compose up -d --build --force-recreate

docker-compose build --no-cache


docker-compose pull && docker-compose up -d
docker-compose stop -t 1
docker-compose rm -f

https://stackoverflow.com/questions/32612650/how-to-get-docker-compose-to-always-re-create-containers-from-fresh-images