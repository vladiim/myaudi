require 'capybara/rspec'
require File.expand_path(File.dirname(__FILE__) + "/../../config/boot")

Capybara.app = Padrino.application