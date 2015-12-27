source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'unicorn', '~> 4.9.0'
group :development do
  gem 'capistrano', '~> 3.4.0'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler' #integrate bundler with capistrano
  gem 'capistrano-rbenv', '~> 2.0'
  gem 'capistrano-cookbook', require: false #helper tasks
  gem 'capistrano-sidekiq', github: 'seuros/capistrano-sidekiq'
  gem 'puma'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


gem 'devise'
gem 'devise-async' #send email in the background

gem 'haml-rails'
gem 'html2haml'

gem 'sidekiq'
gem 'sinatra', require: false #both sinatra and slim being used by the sidekiq web interface
gem 'slim'

#bootstrap and helpers
gem 'bh', '~> 1.2'
gem 'bootstrap', git: 'https://github.com/twbs/bootstrap-rubygem'

#shopping cart
gem 'shoppe'
gem 'redcarpet'





