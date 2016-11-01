class SessionsController < ApplicationController
  before do
    authenticate_user
  end

  get "/new" do
    haml :'sessions/new'
  end

  post "/create" do
    if @user
      session[:user_id] = @user.id
      redirect "/"
    else
      flash.now[:notice] = "Invalid email or password!"
      haml :'sessions/new'
    end
  end

  get "/destroy" do
    session[:user_id] = nil
    redirect "/sessions/new"
  end

  private

  def authenticate_user
    return unless %w(create).include? request.path_info.split('/')[1]
    @user = User.authenticate(params[:user][:email], params[:user][:password])
  end
end
