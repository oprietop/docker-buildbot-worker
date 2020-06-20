FROM buildbot/buildbot-worker:latest
MAINTAINER Oscar Prieto <oscarmpp@gmail.com>

USER root

RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y locales tzdata \
    && locale-gen en_US.UTF-8 \
    && rm -rf /var/lib/apt/lists/*

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN  pip --no-cache-dir install -U \
    selenium \
    unidecode \
    robotframework \
    requests \
    influxdb \
    robotframework-browsermobproxylibrary \
    robotframework-requests \
    robotframework-seleniumlibrary
