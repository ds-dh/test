FROM dsdh/docker-ds


ENV NB_USER=DS-DH-2018

ENV HOME=/home/$NB_USER

USER root

RUN apt-get update && \
    apt-get -y install gcc

RUN pip install 'geopandas'

USER $NB_USER
WORKDIR $HOME