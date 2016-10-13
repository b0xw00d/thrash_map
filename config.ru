require ::File.expand_path('../config/environment.rb',  __FILE__)

set :app_file, __FILE__

unless ENV['RACK_ENV'] == 'production'
  map '/assets' do
    run MyAssets.environment Sinatra::Application.root
  end
end

map('/') { run ApplicationController }
map('/users') { run UsersController }
map('/sessions') { run SessionsController }
