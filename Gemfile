source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', :github => 'rails/rails', :branch => '5-2-stable'
# Use mysql2 as the database for Active Record
gem 'mysql2'
gem 'puma'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
#gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
gem 'redis'
# Use ActiveModel has_secure_password
gem 'bcrypt'

# Use Capistrano for deployment
gem 'capistrano-rails'
gem 'capistrano-bundler'
gem 'capistrano-passenger'
gem 'capistrano-chruby', github: 'capistrano/chruby'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'rspec', :git => "https://github.com/rspec/rspec.git", :branch => 'master'
  gem 'rspec-expectations', :git => "https://github.com/rspec/rspec-expectations.git", :branch => 'master'
  gem 'rspec-rails', :git => "https://github.com/rspec/rspec-rails.git", :branch => 'master'
  gem 'rspec-core', :git => "https://github.com/rspec/rspec-core.git", :branch => 'master'
  gem 'rspec-mocks', :git => "https://github.com/rspec/rspec-mocks.git", :branch => 'master'
  gem 'rspec-support', :git => "https://github.com/rspec/rspec-support.git", :branch => 'master'

  gem 'rails-controller-testing'
  gem 'rails-dom-testing'

  gem 'factory_bot_rails'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'sqlite3'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data'

gem 'cancancan'

gem 'bigdecimal'

gem 'nokogiri'
gem 'rubyzip'
gem 'addressable'
gem 'ffi'

gem 'rdoc'

gem 'paperclip',   :github => 'thoughtbot/paperclip'
gem 'websocket'
gem 'aws-sdk'

gem 'rakismet',    :github => 'joshfrench/rakismet'

gem 'diff-lcs'

gem 'RedCloth'

gem 'devise',             :github => 'plataformatec/devise'
gem 'devise-encryptable', :github => 'plataformatec/devise-encryptable'

gem 'bundler'

gem 'highline'

gem 'mini_portile'
gem 'mini_portile2'
gem 'rb-fsevent'

gem 'mail_form'

gem 'railties'

gem 'bootsnap'

gem 'sprockets'

gem 'loofah'

gem 'rails-html-sanitizer'

gem 'yarn'

gem 'markitup-rails'

gem 'psych'
gem 'ed25519'
gem 'bcrypt_pbkdf'

