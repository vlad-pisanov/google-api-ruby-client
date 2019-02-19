source 'https://rubygems.org'

gemspec

gem 'jruby-openssl', :platforms => :jruby

gem 'legacy-retriable',
     git: 'https://github.com/ProsperWorks/retriable',
     ref: '9937072f73b7d9804a758fd99900bd683a6b2e72'

if ENV['RAILS_VERSION']
  gem 'rails', ENV['RAILS_VERSION']
end
