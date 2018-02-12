FROM dsdh/docker-ds


ENV NB_USER=DS-DH-2018

ENV HOME=/home/$NB_USER

USER root


#'numpy=1.13.3' 
 
RUN pip install --upgrade --quiet 'multiprocess' 
RUN pip install --upgrade --quiet 'git+https://github.com/esafak/mca'

#RUN pip install 'geopandas'

USER $NB_USER
WORKDIR $HOME