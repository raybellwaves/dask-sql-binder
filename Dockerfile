FROM jupyter/scipy-notebook:latest

USER jovyan

RUN git clone https://github.com/nils-braun/dask-sql-binder.git ./dask-sql-binder
RUN cd dask-sql-binder && conda env update -f binder/environment.yml && . binder/postBuild && cd ..
