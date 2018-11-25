ENV['RACK_ENV'] = 'test'

require './birthday-app'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require_relative './features/web_helpers'

Capybara.app = BirthdayApp
