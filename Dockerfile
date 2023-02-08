FROM ubuntu:18.04

RUN apt update &&  apt install -y curl wget  openssh-server ca-certificates tzdata perl &&\
    curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | sudo bash
