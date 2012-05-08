source 'https://rubygems.org'

gem 'rails', '3.2.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'simple_form' # Do $ rails generate simple_form:install (creates the needed configs)
gem 'twitter-bootstrap-rails' # Do $ rails generate bootstrap:install

group :production do
  gem 'pg'  
end

group :development do
  gem 'rails-dev-boost', :git => 'git://github.com/thedarkone/rails-dev-boost.git', 
                         :require => 'rails_development_boost'
end

# Gems used only for assets and not required
# in production environments by default.

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'
    gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'
    gem 'jquery-ui-rails'
  
  gem 'uglifier', '>= 1.0.3'
end

gem 'will_paginate'
gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
