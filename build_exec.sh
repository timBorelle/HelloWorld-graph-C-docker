#!/bin/bash

# Create Docker image
docker build -t hello_world-graph-c-docker .

# Launch the container and execute
docker run -it \
	-e DISPLAY=:0 \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	--rm --name HelloWorld-graph-container \
	hello_world-graph-c-docker

