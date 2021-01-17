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

RUN conda install jupyterlab "ipywidgets>=7.5"
# JupyterLab renderer support
RUN jupyter labextension install jupyterlab-plotly@4.14.3
# OPTIONAL: Jupyter widgets extension
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.14.3

USER root
RUN usermod -u 3305 jovyan
USER 3305

