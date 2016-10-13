class SessionsController < ApplicationController
  get "/new" do
    haml :'sessions/new'
  end

  post "/create" do
    user = User.authenticate(params[:user][:email], params[:user][:password])

    if user
      session[:user_id] = user.id
      redirect "/", notice: "Logged in!"
    else
      flash.now[:notice] = "Invalid email or password!"
      haml :'sessions/new'
    end
  end

  get "/destroy" do
    session[:user_id] = nil
    redirect "/sessions/new"
  end
end
