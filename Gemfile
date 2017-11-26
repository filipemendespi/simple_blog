source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# ActiveRecord
gem 'has_scope', '~> 0.7.1'
gem 'enumerate_it', '~> 1.6', '>= 1.6.1'

# Security
gem 'devise', '~> 4.3'
## Autentication old API VL
gem 'simple_token_authentication', '~> 1.15', '>= 1.15.1'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Adds support for Rspec system testing
  gem 'rspec-rails', '~> 3.6', '>= 3.6.1'

  # Database Cleaner is a set of strategies for cleaning your database in Ruby
  gem 'database_cleaner', '~> 1.6', '>= 1.6.1'

  # Shoulda Matchers provides RSpec- and Minitest-compatible one-liners that
  # test common Rails functionality
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'

  # including factory inheritance
  gem 'factory_bot_rails', '~> 4.8', '>= 4.8.2'

  # Faker library that generates fake data
  gem 'faker', '~> 1.8', '>= 1.8.4'

  # Guard::RSpec allows to automatically & intelligently launch specs when files
  # are modified
  gem 'guard', '~> 2.14', '>= 2.14.1'
  gem 'guard-rspec', '~> 4.7', '>= 4.7.3'
end

group :development do
  # Debugger
  gem 'better_errors', '~> 2.3'

  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
