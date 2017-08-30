FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libmysqlclient-dev

RUN mkdir /rspec_sample
WORKDIR /rspec_sample

ADD Gemfile /rspec_sample/Gemfile
ADD Gemfile.lock /rspec_sample/Gemfile.lock

RUN bundle install
