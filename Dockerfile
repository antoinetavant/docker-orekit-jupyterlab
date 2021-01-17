############################################################
# Dockerfile to use Orekit on Linux
# Based on Ubuntu 18
############################################################

# Set the base image from lukewendling/orekit-jupyter

FROM jupyter/scipy-notebook
LABEL maintainer "Antoine Tavant <antoine.tavant@polytechnique.edu>"

# Update all
# RUN apt -y update
#USER 1000

RUN conda install -y -c conda-forge orekit

RUN /opt/conda/bin/conda install --yes  -c conda-forge poliastro

#CMD ["./start-notebook.sh"]