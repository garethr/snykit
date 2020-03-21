ARG BASE=ruby:2.7.0

FROM ${BASE}

RUN bundle config --global frozen 1
RUN bundle config set without "development test"

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000
EXPOSE 9393

CMD ["bundle", "exec", "puma", "-C", "puma.rb"]
