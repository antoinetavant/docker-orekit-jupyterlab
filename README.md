# Docker Orekit Jupyterlab

This repository hold a Dockerfile for a Ubuntu based docker comptainer with Orekit and jupyterlab

## Usage 

You can launch it with 

```docker run -it -p 8888:8888 -e JUPYTER_TOKEN -e JYPYTER_ENABLE_LAB -e GRANT_SUDO="yes" -v "$PWD"/:/home/jovyan/work:rw ntoinelpp:orekitjupyterlab
```
