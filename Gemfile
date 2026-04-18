source 'https://rubygems.org'

ruby '3.3.6'
gem 'faker'
gem 'rails-i18n'
gem 'simple_calendar'
gem 'bcrypt'

gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'

gem 'rails', '~> 8.0'
# Use sqlite3 as the database for Active Record
# 開発環境(ローカル)ではSQLite3を使用
gem 'sqlite3', '~> 2.0', group: :development

# 本番環境(heroku)ではPostgreSQLを使用
gem 'pg', '~> 1.2', '>= 1.2.3', group: :production
# Use Puma as the app server
gem 'puma', '~> 6.0'
# Use SCSS for stylesheets
gem 'sassc-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Sprockets asset pipeline
gem 'sprockets-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.8'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'carrierwave'
gem 'rmagick'
gem 'kaminari'
