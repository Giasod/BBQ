source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'carrierwave'
gem 'devise'
gem 'devise-i18n'
gem 'fog-aws'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-vkontakte'
gem 'puma', '~> 4.1'
gem 'pundit'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
gem 'rails-i18n'
gem 'resque'
gem 'rmagick', '~> 4.1.2'
gem 'twitter-bootstrap-rails'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'letter_opener'
  gem 'listen', '~> 3.2'
  gem 'sqlite3', '~> 1.4'

  gem 'capistrano', '~> 3.14.1'
  gem 'capistrano-rails', '~> 1.6.1'
  gem 'capistrano-passenger', '~> 0.2'
  gem 'capistrano-rvm', '~> 0.1.2'
  gem 'capistrano-bundler', '~> 2.0.1'
  gem 'capistrano-resque', require: false

  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
end

group :production do
  gem 'pg'
end
