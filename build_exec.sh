#!/bin/bash

# Create Docker image
docker build -t hello_world-graph-c-docker .

# Launch the container and execute (read only)
docker run --rm -it \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-v ~/.Xauthority:/home/user/.Xauthority:ro \
	-e DISPLAY hello_world-graph-c-docker
