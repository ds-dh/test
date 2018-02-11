FROM dsdh/docker-ds


ENV NB_USER=DS-DH-2018

ENV HOME=/home/$NB_USER

USER root


#'numpy=1.13.3' 


RUN conda install --yes 'setuptools' 
RUN conda install --yes 'sqlite' 
RUN conda install --yes 'bokeh' 
RUN conda install --yes 'pandas' 
RUN conda install --yes 'plotly' 
RUN conda install --yes 'scrapy' 
RUN conda install --yes 'dill'

#RUN pip install 'geopandas'

USER $NB_USER
WORKDIR $HOME