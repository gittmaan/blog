require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']
source 'http://rubygems.org'
gem 'rails', '3.1.1'
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
if HOST_OS =~ /linux/i
  gem 'therubyracer', '>= 0.9.8'
end

gem 'settings', "0.0.4"

gem 'haml', '>= 3.1.2'
gem 'formtastic'

gem 'bson_ext', '>= 1.3.1'
gem 'mongoid', '>= 2.3.3'
gem 'devise', '>= 1.5.0'

gem 'guard', '>= 0.6.2'
gem 'guard-bundler', '>= 0.1.3'
gem 'guard-rails', '>= 0.0.3'
gem 'guard-livereload', '>= 0.3.0'
gem 'guard-rspec', '>= 0.4.3'
gem 'guard-cucumber', '>= 0.6.1'
gem 'less-rails-bootstrap'

group :development do
  gem 'rspec-rails', '>= 2.6.0'
  gem 'faker', '0.3.1'
  gem 'rails-footnotes', '>= 3.7'
  gem 'haml-rails', '>= 0.3.4'

  platforms :ruby_18 do
    gem 'ruby-debug'
    gem 'ruby-debug-ide'
  end

  platforms :ruby_19 do
    gem 'ruby-debug19'
    gem 'ruby-debug-ide19'
  end

 case HOST_OS
  when /darwin/i
    gem 'rb-fsevent'
    gem 'growl'
  when /linux/i
    gem 'libnotify'
    gem 'rb-inotify'
  when /mswin|windows/i
    gem 'rb-fchange'
    gem 'win32console'
    gem 'rb-notifu'
  end
end

group :test do
  gem 'rspec'
  gem 'rspec-rails', '>= 2.6.0'
  gem 'resque_spec'
  gem 'faker', '0.3.1'
  gem 'selenium-webdriver'
  gem 'rcov'
  gem 'spork', '>= 0.9.0.rc'
  gem 'guard-spork', :git => 'git://github.com/guard/guard-spork.git'
  gem 'database_cleaner', '>= 0.7.0'
  gem 'mongoid-rspec', '>= 1.4.4'
  gem 'factory_girl_rails', '>= 1.3.0'
  gem 'cucumber-rails', '>= 1.2.0'
  gem 'capybara', '>= 1.1.2'
  gem 'launchy', '>= 2.0.5'

  platforms :ruby_18 do
    gem 'ruby-debug'
    gem 'ruby-debug-ide'
    gem 'metric_fu'
  end

  platforms :ruby_19 do
    gem 'ruby-debug19'
    gem 'ruby-debug-ide19'
  end

  gem 'growl_notify'
end


