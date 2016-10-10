require ::File.expand_path('../config/environment.rb',  __FILE__)
require './config/sprockets_config.rb'

set :app_file, __FILE__

unless ENV['RACK_ENV'] == 'production'
  map '/assets' do
    run MyAssets.environment Sinatra::Application.root
  end
end

run Sinatra::Application
