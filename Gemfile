source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '~> 4.1'

gem 'coffee-rails', '~> 4.0.0'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'pg'
gem 'thin'
gem 'uglifier', '>= 1.3.0'
gem 'rails-i18n', '~> 4.0.0'

group :development do
  gem 'spring'
  gem 'quiet_assets'
end

group :development, :test do
  gem 'guard'
  gem 'guard-brakeman'
  gem 'guard-bundler'
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  gem 'guard-rubocop'
  gem 'guard-spring'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'database_cleaner'
end

group :test do
  gem 'foreigner'
  gem 'foreigner-matcher', require: nil
  gem 'launchy'
  gem 'rspec-rails', '~> 3.0.1'
  gem 'rspec-collection_matchers'
  gem 'minitest'
  gem 'shoulda-matchers'
  gem 'spring-commands-rspec'
  gem 'capybara'
end
