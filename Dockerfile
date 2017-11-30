FROM ruby:2.4.2-slim-jessie

# Used aptitude
RUN apt-get update \
  && apt-get install -y aptitude nodejs openssl libpq-dev build-essential python-software-properties

# make the "pt_BR.UTF-8" locale so postgres will be utf-8 enabled by default
RUN aptitude update \
  && aptitude install -y locales \
    && rm -rf /var/lib/apt/lists/* \
    && localedef -i pt_BR -c -f UTF-8 -A /usr/share/locale/locale.alias pt_BR.UTF-8
ENV LANG pt_BR.utf8


COPY Gemfile Gemfile
RUN bundle install --jobs=80

COPY . /var/app

WORKDIR /var/app
