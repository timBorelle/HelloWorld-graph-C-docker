
# Steps :

Execute this script :

```./build_exec.sh```

or these two docker commands :

1) Build Docker image

```docker build -t HelloWorld-graph-c-docker . ```

2) Launch the container and execute

``` 
docker run -it \
	-e DISPLAY=:0 \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	--rm --name HelloWorld-graph-container \
	HelloWorld-graph-c-docker 
```
