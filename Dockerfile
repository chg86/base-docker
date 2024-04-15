FROM bkci/ci:alpine
RUN apt update -y
RUN apt install -y git python3 gcc g++ make clang cmake
RUN apt install -y docker
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
