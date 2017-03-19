FROM buildbot/buildbot-worker:latest
MAINTAINER Oscar Prieto <oscarmpp@gmail.com>

USER root

RUN pip install -U \
    selenium \
    unidecode \
    robotframework \
    robotframework-selenium2library \
    robotframework-appiumlibrary \
    robotframework-browsermobproxylibrary
