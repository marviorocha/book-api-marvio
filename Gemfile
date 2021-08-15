source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.1.4'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'
 
gem 'bootsnap', '>= 1.4.4', require: false

gem "active_model_serializers", "~> 0.10.12"
 

group :development, :test do
  gem "faker", "~> 2.18"
  gem "factory_bot_rails", "~> 6.2"
  gem "rspec-rails", "~> 5.0"
  gem "simplecov", "~> 0.21.2"
  gem "rspec", "~> 3.10"
  gem "shoulda-matchers", "~> 5.0"
  gem "rspec-json_expectations", "~> 2.2"

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]




