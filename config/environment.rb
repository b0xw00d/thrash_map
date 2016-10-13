require 'rubygems'
require 'bundler'
require 'pathname'
require 'sinatra/base'
require 'active_record'
require 'active_support/core_ext'
require 'rack-flash'
require 'sinatra/redirect_with_flash'
require './config/sprockets_config.rb'

Bundler.require

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

configure do
  set :root, APP_ROOT.to_path
end

Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }

require APP_ROOT.join('config', 'database')
