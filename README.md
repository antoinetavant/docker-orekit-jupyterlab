# Docker Orekit Jupyterlab

This repository hold a Dockerfile for a Ubuntu based docker comptainer with Orekit and jupyterlab

## Usage 

You can launch it with 

```
docker run -it -p 8888:8888 -e JUPYTER_TOKEN -e JYPYTER_ENABLE_LAB -e GRANT_SUDO="yes" -v "$PWD"/:/home/jovyan/work:rw --user jovyan antoinelpp/docker-orekit-jupyterlab 
```

`jovyan` is the default user of the docker `jupyter/scipy-notebook` from which this image is based.
In order to allow the modification of the volume, I add to change the user id to mine (3350).
Addapted from [this answer](https://stackoverflow.com/questions/29245216/write-in-shared-volumes-docker).

