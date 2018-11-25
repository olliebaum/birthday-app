ENV['RACK_ENV'] = 'test'

require './birthday-app'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = BirthdayApp
