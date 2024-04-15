FROM bkci/ci:alpine
RUN apt update -y
RUN apt install -y git python3 gcc g++ make clang cmake

RUN apt clean
RUN apt autoclean
RUN apt autoremove
RUN apt-cache policy docker-ce

RUN apt install -y docker-ce
RUN docker --help
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
