FROM ubuntu:18.04
ENV TZ Europe/Moscow
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update &&  apt install -y curl wget  openssh-server ca-certificates tzdata perl &&\
    curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash
