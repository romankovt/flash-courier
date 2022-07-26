# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Use postgres as database
gem "pg", "~> 1.3.5"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.6.4"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# ruby linter
gem "rubocop", "~> 1.32", require: false
gem "rubocop-performance", "~> 1.14.3", require: false
gem "rubocop-rails", "~> 2.15.2", require: false
gem "rubocop-faker", "~> 1.1.0", require: false
gem "rubocop-rspec", "~> 2.12.1", require: false

# Optimized json serialization
gem "oj", "~> 3.13.18"

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # use pry as rails default console
  gem "pry-rails", "~> 0.3.9"
  # use nice themes for pry
  gem "pry-theme", "~> 1.3.1"
  # nice printing in console
  gem "awesome_print", "~> 1.9.2"
  # ruby debugger
  gem "pry-byebug", "~> 3.9.0"

  # gem "rspec-rails", "~> 6.0.0.rc1"
  # gem "database_cleaner-active_record", "~> 2.0.1"
  # gem "test-prof", "~> 1.0.7"
  # gem "stackprof", ">= 0.2.9", require: false
  # gem "ruby-prof", ">= 0.17.0", require: false
  # gem "faker", "~> 2.21.0"
  # gem "factory_bot_rails", "~> 6.2.0"

  # security static analyzer
  gem "brakeman", "~> 5.2.3"

  # audit gems for known vulnerabilities
  gem "bundler-audit", "~> 0.9.1"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
