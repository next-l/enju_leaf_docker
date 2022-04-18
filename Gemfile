source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.3'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.6'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'enju_seed', path: 'engines/enju_seed'
gem 'enju_leaf', path: 'engines/enju_leaf'
gem 'enju_biblio', path: 'engines/enju_biblio'
gem 'enju_library', path: 'engines/enju_library'
gem 'enju_manifestation_viewer', path: 'engines/enju_manifestation_viewer'
gem 'enju_ndl', path: 'engines/enju_ndl'
gem 'enju_circulation', path: 'engines/enju_circulation'
gem 'enju_subject', path: 'engines/enju_subject'
gem 'enju_message', path: 'engines/enju_message'
gem 'enju_event', path: 'engines/enju_event'
gem 'enju_inventory', path: 'engines/enju_inventory'
gem 'charlock_holmes', platform: :mri
gem 'sunspot_solr', '~> 2.5'
gem 'progress_bar'
gem 'resque', require: 'resque/server'
gem 'dotenv-rails'
gem 'fix_microsoft_links'
gem 'sinatra', '~> 2.1.0'
gem 'jquery-ui-rails', '~> 4.2'
gem 'sitemap_generator'
gem 'paper_trail'
gem 'rails-i18n'
