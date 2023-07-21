# django-docker

## create python venv

```bash
$ pip3 install virtualenv
$ python3 -m venv django_env

#activate
$ source django_env/bin/activate

# deactivate
$ deactivate django_env

# delete
$ rm -rf django_env
```

## Run Django app in Docker
```bash
$ cd zday
$ docker-compose up --build -d  
```
## Verify application functionality
```bash
$ cd zday
$ docker-compose up --build -d
$ docker-compose up -d

$ docker-compose ps 
NAME                IMAGE               PORTS
app                 django-app:latest   8000/tcp
nginx               nginx:alpine        0.0.0.0:80->80/tcp
pgdb                postgres:alpine     5432/tcp

$ curl -I http://127.0.0.1:80                                                                                           
HTTP/1.1 200 OK
Server: nginx/1.25.1
Date: Fri, 21 Jul 2023 11:07:56 GMT
Content-Type: text/html; charset=utf-8
Connection: keep-alive
X-Frame-Options: DENY
X-Content-Type-Options: nosniff
Referrer-Policy: same-origin

```

## Clean Docker resources
```bash
$ docker-compose down
$ docker system prune --all --force --volumes
```

