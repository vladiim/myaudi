#!/usr/bin/env rackup
# encoding: utf-8

# This file can be used to start Padrino,
# just execute it from the command line.

require 'sinatra/base'

if RACK_ENV.to_s == 'production'
  use Rack::Auth::Basic, "Protected Area" do |username, password|
   username == ENV['ADMIN_E'] && password == ENV['ADMIN_P']
  end
end

require File.expand_path("../config/boot.rb", __FILE__)

run Padrino.application
