FROM python:alpine

COPY requirements.txt /opt/

RUN apk add --update --no-cache --virtual /tmp/deps \
		musl-dev postgresql-dev gcc && \
	pip3 install --no-cache-dir -r /opt/requirements.txt && \
	apk del /tmp/deps && \
	apk add --no-cache libpq && \
	rm -rf /var/cache/apk/*

COPY . /opt/zday/

WORKDIR /opt/zday

RUN mv init.sh /init.sh && \
	chmod +x /init.sh

EXPOSE 8000

ENTRYPOINT [ "/init.sh" ]

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]
