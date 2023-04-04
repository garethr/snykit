# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "sinatra", "2.2.3"
gem "puma", "4.3.12"
gem 'puma-metrics'

group :test do
  gem 'rake'
  gem 'rspec'
  gem 'rack-test', '>= 2.0.0'
end
