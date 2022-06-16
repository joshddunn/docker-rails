FROM ruby:3.0.3

# installs and uses jemalloc instead of the default memory allocator
RUN apt-get update && apt-get install libjemalloc2
ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libjemalloc.so.2

# removes files related to apt
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp

RUN bundler install
