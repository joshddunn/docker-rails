FROM ruby:3.0.3

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp

RUN bundler install
