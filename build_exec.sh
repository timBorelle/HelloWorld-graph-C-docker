#!/bin/bash

# Create Docker image
docker build -t mastermind-c-docker .

# Launch the container and execute
docker run -it \
	-e DISPLAY=:0 \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	--rm --name mastermind-container \
	mastermind-c-docker

