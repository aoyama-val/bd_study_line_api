#!/bin/sh

# このコンテナのRubyはEncoding.default_externalがUS-ASCIIで、pしたときマルチバイト文字が
# エスケープされてしまうので、-E UTF-8を指定しておく。
# http://qiita.com/scivola/items/ac51957b491e277c6cd5

#exec docker run -it --rm -v $PWD:/work -v $PWD/bundle:/usr/local/bundle -w /work -p 4567:4567 ruby:2.3.1 bundle exec ruby -E "UTF-8" "$@"
exec docker run -it --rm -v $PWD:/work -v $PWD/bundle:/usr/local/bundle -w /work ruby:2.3.1 bundle exec ruby -E "UTF-8" "$@"
