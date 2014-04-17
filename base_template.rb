gem_group :development do
  gem 'capistrano', '2.15.2'
  gem 'rvm-capistrano'
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'annotate', '>=2.6.0'
end

gem_group :test do
  gem 'minitest'
  gem 'rspec-rails'
  gem 'guard-rspec', require: false
  gem 'capybara'
  gem 'shoulda'
  gem 'factory_girl_rails'
end

gem_group :production do
  gem 'unicorn'
end

run 'bundle install'