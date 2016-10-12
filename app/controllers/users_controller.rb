get "/users/new" do
  haml :'users/new'
end

post "/users/create" do
  @user = User.new(params[:user])

  if @user.save
    redirect "/sessions/new"
  else
    haml :'users/new'
  end
end
