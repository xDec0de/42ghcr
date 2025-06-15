FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    build-essential \
    valgrind \
    libreadline-dev \
    python3 \
    python3-pip \
    make \
    git \
    lcov \
    && python3 -m pip install --upgrade pip \
    && pip3 install norminette --break-system-packages \
    && apt clean
