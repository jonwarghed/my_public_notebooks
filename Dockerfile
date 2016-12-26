FROM continuumio/anaconda3
RUN conda install seaborn jupyter -y --quiet
RUN conda install -c conda-forge altair -y --quiet
RUN jupyter nbextension enable vega --py --sys-prefix
CMD /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser

