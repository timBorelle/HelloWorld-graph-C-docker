
# Steps :

Execute with docker-compose :

```
docker-compose up
``` 


Or Execute this script :

```./build_exec.sh```

Or these two docker commands :

1) Build Docker image

```docker build -t hello_world-graph-c-docker . ```

2) Launch the container and execute

``` 
docker run --rm -it \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-v ~/.Xauthority:/home/user/.Xauthority:ro \
	-e DISPLAY hello_world-graph-c-docker
```
