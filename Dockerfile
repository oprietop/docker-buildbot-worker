FROM buildbot/buildbot-worker:latest
MAINTAINER Oscar Prieto <oscarmpp@gmail.com>

USER root

# Set the locale
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 

# Install the packages
RUN pip --no-cache-dir install -U \
    selenium \
    unidecode \
    robotframework \
    robotframework-selenium2library \
    robotframework-appiumlibrary \
    robotframework-browsermobproxylibrary
