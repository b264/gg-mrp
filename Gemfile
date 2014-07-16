source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '~> 3.2.16'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  #gem 'therubyracer', :platforms => :ruby #hangs on libv8
  gem 'therubyracer', '~> 0.11.4', platforms: :ruby
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'haml'

# we don't need the debugger in :production
group :development, :test do
  gem 'debugger'
  gem 'pry'
  #gem 'ruby-debug19'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'cucumber'
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'factory_girl'
  gem 'factory_girl_rails' #, '~> 2.2'
end
group :development do
  gem 'webrick', '~> 1.3.1'
end
group :test do
  gem 'cucumber-rails'
  gem 'cucumber-rails-training-wheels'
end
group :development, :test, :production do
  #gem 'sqlite3'
  gem 'pg'
end

# user authentication
gem 'devise', '~> 3.2.4'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'
