rm -r ${PWD}/mysql
docker stop dev
docker rm dev
docker image rm dev:latest
docker build --tag dev:latest .
docker run -i -t -p "80:80" -v ${PWD}/www:/app -v ${PWD}/mysql:/var/lib/mysql --name dev dev:latest