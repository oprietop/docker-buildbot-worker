FROM buildbot/buildbot-worker:latest
MAINTAINER Oscar Prieto <oscarmpp@gmail.com>

USER root

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

RUN apt-get update \
    && apt-get install -y locales tzdata \
    && locale-gen en_US.UTF-8 \
    && rm -rf /var/lib/apt/lists/* \
    && pip --no-cache-dir install -U \
    selenium \
    unidecode \
    robotframework \
    requests \
    influxdb \
    robotframework-appiumlibrary \
    robotframework-browsermobproxylibrary \
    robotframework-requests \
    robotframework-seleniumlibrary
