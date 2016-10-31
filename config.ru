require ::File.expand_path('../config/environment.rb', __FILE__)

set :app_file, __FILE__

map('/assets') { run MyAssets.environment Sinatra::Application.root }
map('/') { run ApplicationController }
map('/users') { run UsersController }
map('/sessions') { run SessionsController }
