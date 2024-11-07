# Docker Template

Basic docker image building steps to build a Python image that contains local packages
and pandas (which requires additional things to be installed into Docker base image).

### Building & Running an Image

Build Docker image with...

``` bash
$ docker build -t your-image-name:tag .
```

See what images you have installed...

``` bash
$ docker images
```

Run an image in a container, have the container close on exit, and open a bash
prompt in the image...

``` bash
$ docker run -it --rm your-image-name:tag /bin/bash
```

### Pushing an Image

Tag the image if you haven't already (otherwise just login)...

``` bash
$ docker tag your-image-name your-docker-username/your-image-name:tag
```

Log in to Docker...

``` bash
$ docker login
```

Push the image...

``` bash
$ docker push your-dockerhub-username/your-image-name:tag
```

### Delete and Image

Delete an image...

``` bash
$ docker rmi your-image-name:tag
```
