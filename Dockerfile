FROM ruby:2.5.3-stretch

RUN apt-get update && apt-get install -y \ 
  build-essential \ 
  nodejs

# Install yarn
ADD https://dl.yarnpkg.com/debian/pubkey.gpg /tmp/yarn-pubkey.gpg
RUN apt-key add /tmp/yarn-pubkey.gpg && rm /tmp/yarn-pubkey.gpg
RUN echo 'deb http://dl.yarnpkg.com/debian/ stable main' > /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
  build-essential libpq-dev curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get install -qq -y --no-install-recommends nodejs yarn


ENV LANG en_GB.UTF-8 
ENV LANGUAGE en_GB:en 
ENV LC_ALL en_GB.UTF-8

RUN mkdir -p /app 
WORKDIR /app

COPY Gemfile Gemfile.lock ./ 
RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . ./

EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-b", "0.0.0.0"]