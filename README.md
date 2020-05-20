### Dockerfiles

This branch contains a Dockerfile and debian package for jenkins and docker.
Debian file is used to install the jenkins and docker inside the docker image.

When we launch a new container using this docker image, jenkins will be autostarted in the new container.

* when jenkins autostarted, there is no plugin installed in the jenkins and its completely empty/fresh setup
* You can install new plugins in the container and can create a new image with pre-installed plugins

You can download docker image: **abhishek235/ubuntu-jenkins:complete-pipeline** from docker hub. This image is created using this docker file and have github, build pipeline plugin installed in the docker image.
When you launch a new container using this image, here will be the Jenkins username and password:
username: admin
password: admin


_Git max upload file size for now is **50MB** and jenkins debian package size is greater than default size allowed. So It might be possible that the file corrupted while uploading. You can download you own debian package and replace with this debian package._
