gem_group :development, :test do
  gem 'rspec-rails', '~> 3.0.0'
end

gem_group :development do
  gem 'capistrano', '2.15.2'
  gem 'rvm-capistrano'
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'annotate', '>=2.6.0'
  gem 'bullet'
  gem 'faker'
  gem 'lol_dba'
end

gem_group :test do
  gem 'minitest'
  gem 'guard-rspec', require: false
  gem 'capybara'
  gem 'shoulda'
  gem 'factory_girl_rails'
end

# You should really install libxml and other required libraries system-wide
run 'bundle config build.nokogiri --use-system-libraries'
run 'bundle install'
run 'bundle exec rails g rspec:install'
run 'guard init'
