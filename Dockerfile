FROM bkci/ci:alpine
RUN apt update -y
RUN apt install -y git python3 gcc g++ make clang cmake

RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh

RUN docker --help

RUN systemctl start docker
RUN systemctl status docker
RUN docker run hello-world
RUN docker images


ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
