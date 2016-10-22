def current_user
  return unless session[:user_id]

  User.find(session[:user_id])
end
