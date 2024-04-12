FROM bkci/ci:latest

RUN yum install -y mysql-devel

RUN yum install -y git python3 gcc g++ make clang cmake docker
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
