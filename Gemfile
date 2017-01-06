source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails'

gem 'pg'
gem 'puma'
gem 'redis'

gem 'coffee-rails'
gem 'jbuilder'
gem 'sass-rails'
gem 'uglifier'

gem 'jquery-rails'
gem 'turbolinks'

gem 'bcrypt'

group :development, :test do
  gem 'pry'
  gem 'rspec-rails'
  gem 'rubocop'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen'
  gem 'web-console'
end
