source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use semantic UI as css framework
# Using github forked versions in order to make it work with rails 5
gem 'autoprefixer-rails', '~> 6.7'
gem 'less-rails', git: 'https://github.com/MustafaZain/less-rails'
gem 'less-rails-semantic_ui', git: 'https://github.com/dangerous/Semantic-UI-Rails-LESS.git'

# Use simple form for form management
gem 'simple_form', '~> 3'

# HAML FTW!
gem 'haml-rails'

# Traiblazer for "good code"
gem 'dry-validation'
gem 'trailblazer-rails'

# Use InfluxDB to store unit value net asset value timeseries
# gem 'influxdb-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes navigating your web application faster.
# Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'awesome_print'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3'
  gem 'travis'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere
  # in the code.
  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # nice rails console
  gem 'hirb'
  gem 'pry'

  # see if unused routes
  gem 'traceroute'

  # check if queries are good
  gem 'bullet'

  # linting tools
  gem 'haml-lint', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  # travis CI needs rake
  gem 'rake'

  # code coverture
  gem 'codecov', require: false
  gem 'coveralls', require: false
  gem 'codeclimate-test-reporter', require: nil
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
