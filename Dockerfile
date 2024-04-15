FROM bkci/ci:latest

RUN apt-get install -y mysql-devel

RUN apt-get install -y git python3 gcc g++ make clang cmake docker
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
