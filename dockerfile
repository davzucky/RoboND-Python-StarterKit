FROM continuumio/miniconda
LABEL "project.home"="https://github.com/udacity/RoboND-Python-StarterKit"

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get -y install libgomp1 libgtk2.0-0

WORKDIR /usr/install
copy environment.yml .

RUN conda env create -f environment.yml

EXPOSE 8888
