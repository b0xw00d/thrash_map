enable :sessions

get "/sessions/new" do
  haml :'sessions/new'
end

post "/sessions/create" do
  user = User.authenticate(params[:user][:email], params[:user][:password])

  if user
    session[:user_id] = user.id
    redirect "/"
  else
    haml :'sessions/new'
  end
end

get "/sessions/destroy" do
  session[:user_id] = nil
  redirect "/sessions/new"
end
