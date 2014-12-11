source 'https://rubygems.org'

ruby '2.0.0'

# Server requirements
gem 'thin', '~> 1.6.2'

# Optional JSON codec (faster performance)
gem 'oj', '~> 2.10.2'

# Project requirements
gem 'rake', '~> 10.3.2'
gem 'padrino-warden'

# Component requirements
gem 'bcrypt'
gem 'rack-coffee',   '~> 1.0.3', :require => 'rack/coffee'
gem 'coffee-script', '~> 2.3.0'
gem 'sass',          '~> 3.4.1'
gem 'haml',          '~> 4.0.5'
gem 'pg',            '~> 0.17.1'
gem 'sequel',        '~> 4.13.0'
gem 'uglifier'
gem 'listen'

# Test requirements
group :test do
  gem 'rspec',     '~> 3.0.0'
  gem 'rack-test', '~> 0.6.2', :require => 'rack/test'
  gem 'capybara',  '~> 2.4.1'
  gem 'launchy',   '~> 2.4.2'
end

# Development/ test helper gems
group :development, :test do
  gem 'debugger', '~> 1.6.8'
  gem 'dotenv', '~> 0.11.1'
  gem 'pry',    '~> 0.10.1'
end

# Padrino Stable Gem
gem 'padrino', '~> 0.12.3'