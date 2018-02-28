FROM dsdh/docker-ds

ENV NB_USER=DS-DH-2018
ENV HOME=/home/$NB_USER
USER $NB_USER
WORKDIR $HOME

VOLUME	['~/notebooks', '', 'rw']