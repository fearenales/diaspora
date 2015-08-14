FROM azukiapp/ruby
MAINTAINER Azuki <support@azukiapp.com>

RUN apt-get -yqq update && \
    apt-get -yqq install \
      build-essential \
      git \
      curl \
      imagemagick \
      libmagickwand-dev \
      nodejs \
      redis-server \
      libcurl4-openssl-dev \
      libxml2-dev \
      libxslt-dev \
      libpq-dev \
      libmagickwand-dev \
      cmake && \
    apt-get clean -qq && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*