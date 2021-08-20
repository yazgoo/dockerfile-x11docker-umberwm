all:
	docker build -t x11docker-umberwm . && \
		x11docker --user=RETAIN --gpu --desktop x11docker-umberwm:latest
