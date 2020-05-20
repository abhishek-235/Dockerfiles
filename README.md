### Dockerfiles

This branch contains a Dockerfile and docker debian. Debian file is used to install the docker inside the docker image. So we can launch a docker container from the running container.

Docker image contains jenkins and docker installed inside the container
When launch a new container using this docker image, jenkins will be autostarted

* when jenkins autostarted, there is no plugin installed in the jenkins and its completely empty/fresh setup
* You can install new plugins in the container and can create a new image with pre-installed plugins
