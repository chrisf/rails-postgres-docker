FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get -y install nodejs yarn
RUN mkdir /code
WORKDIR /code
ADD Gemfile /code/Gemfile
ADD Gemfile.lock /code/Gemfile.lock
RUN bundle install --path vendor/cache
ADD . /code
