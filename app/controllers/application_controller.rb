class ApplicationController < Sinatra::Base
  set :views, File.join(Sinatra::Application.root, "app", "views")
  enable :sessions
  use Rack::Flash
  helpers Sinatra::RedirectWithFlash

  get "/" do
    redirect "/skatespots"
  end
end
