source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'carrierwave'
gem 'devise'
gem 'devise-i18n'
gem 'fog-aws'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
gem 'rails-i18n'
gem 'rmagick', '~> 4.1.2'
gem 'twitter-bootstrap-rails'
gem 'webpacker', '~> 4.0'

group :development do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'letter_opener'
  gem 'listen', '~> 3.2'
  gem 'sqlite3', '~> 1.4'
end

group :production do
  gem 'pg'
end
