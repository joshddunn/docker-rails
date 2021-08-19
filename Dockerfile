FROM ruby:3.0.2

RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get update
RUN apt-get install -y build-essential inotify-tools nodejs

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp

RUN bundler install
