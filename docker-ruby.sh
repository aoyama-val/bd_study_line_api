#!/bin/sh

exec docker run -it --rm -v $PWD:/work -v $PWD/bundle:/usr/local/bundle -w /work -p 4567:4567 ruby:2.3.1 bundle exec ruby "$@"
