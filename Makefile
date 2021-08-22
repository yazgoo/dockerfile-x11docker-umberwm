all:
	docker build -t umberwm . && \
		x11docker --user=RETAIN --gpu --desktop umberwm:latest
