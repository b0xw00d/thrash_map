get "/users/new" do
  haml :'users/new'
end

post "/users/create" do
  @user = User.new(params[:user])

  if @user.save
    flash[:notice] = "Successful signup!"
    redirect "/sessions/new"
  else
    haml :'users/new'
  end
end
