FROM ubuntu:latest

MAINTAINER ybmsr <ybmadhu404@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update

RUN apt-get -y install curl gnupg

RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -

RUN apt-get install -y nodejs

RUN apt-get install -y npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
