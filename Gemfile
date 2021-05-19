source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'
## Gem sympa découvertes

# To add guest users (i.e. user can use parts of the product without signup)
gem 'devise-guests'
# To cache DB data - to dig though, as it wouldn't work in crux
gem 'redis'
gem 'hiredis'
# To easily pass rails data to JS
gem 'gon'
gem 'rabl-rails'

## 'Basic' gems, for usual non-core features

gem 'cloudinary', '~> 1.9.1'
gem 'geocoder', '~> 1.3', '>= 1.3.7'
gem 'awesome_print'
gem "algoliasearch-rails"
gem 'geokit-rails'
gem 'pg_search'
gem 'faker'

## Test and dev basic gems

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'rspec-rails', '~> 3.8.2'
  gem 'shoulda-matchers'
  gem 'rails-controller-testing'
  gem 'factory_bot_rails'
  gem 'database_cleaner', '~> 1.5'
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

group :development do
  gem 'faker'
  gem "letter_opener"
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

## Core gems

gem 'redcarpet'
gem 'i18n'
gem 'dotenv-rails', groups: [:development, :test]
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use postgresql as the database for Active Record,
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'
# cloudinary
gem 'jquery-rails'
#carrierwave
gem 'carrierwave', '~> 1.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
gem 'autoprefixer-rails'
gem 'font-awesome-sass', '~> 5.5.0'
gem 'simple_form'
gem 'devise'
gem 'sassc-rails'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

gem 'jbuilder', '~> 2.5'

gem 'bootsnap', '>= 1.1.0', require: false


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
