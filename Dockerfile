ARG BASE=ruby:2.7.0

FROM ${BASE}

RUN bundle config --global frozen 1
RUN bundle config set without "development test"

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
