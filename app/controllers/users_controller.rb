class UsersController < ApplicationController
  get "/new" do
    haml :'users/new'
  end

  post "/create" do
    @user = User.new(params[:user])

    if @user.save
      redirect "/sessions/new", notice: "Successful signup!"
    else
      haml :'users/new'
    end
  end
end
