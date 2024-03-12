FROM python:latest

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN apt update -y
RUN apt install nano htop -y

WORKDIR /srv/python_scripts
#makes easy relative inputs

ADD ./index.py  /srv/index.py

# There can only be one in each file
CMD ["python", "/srv/python_scripts/index.py"]

#Things that change a lot move towards the bottom to increase spead of building



