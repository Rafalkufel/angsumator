FROM ubuntu:16.04                                                                                                               


# switch to Bash 
RUN rm /bin/sh && ln -s /bin/bash /bin/sh                                                                                       

# Grab some pre-requisites and install the 7.x version of Node
RUN apt-get update \
    && apt-get -y install build-essential \
    && apt-get -y install curl \
    && curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt-get -y install nodejs                                                                                                

# install the Angular CLI version
RUN npm install -g @angular/cli                                                                                                                

#adding non-root user (every user in heroku is non-root user
#RUN adduser otoja
#USER otoja

# make a directory and adding project files 
RUN mkdir -p /src

ADD . /src

#set working directory and execute project
WORKDIR /src

CMD ng serve --port 4200 --host=0.0.0.0



