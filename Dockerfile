FROM ruby:3.1.2

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp

RUN bundler install
