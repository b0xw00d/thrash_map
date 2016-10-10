require 'rubygems'
require 'bundler'
require 'pathname'
require 'active_record'
require 'active_support/core_ext'

Bundler.require

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

configure do
  # Sinatra expects the file running config to be in the root of the app
  # We'll have to tell Sinatra otherwise here:
  set :root, APP_ROOT.to_path
  set :views, File.join(Sinatra::Application.root, "app", "views")
end

Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }

require APP_ROOT.join('config', 'database')
