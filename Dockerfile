FROM ubuntu:18.04
ENV TZ Europe/Moscow
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update &&  apt install -y curl wget  openssh-server ca-certificates tzdata perl
RUN curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh |
RUN apt install gitlab-ce
RUN apt-get update && apt-get install -y locales

# Locale
RUN sed -i -e \
      's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen \
       && locale-gen

ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:ru
ENV LC_LANG ru_RU.UTF-8
ENV LC_ALL ru_RU.UTF-8


ENV TZ Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
