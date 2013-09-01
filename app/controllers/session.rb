#login, authenticate user, assign user_id to session
post '/login' do
  @user = User.authenticate(params[:username], params[:password])

  if @user
    session[:user_id] = @user.id
    redirect '/decks'
  else
    # flash message invalid login
    redirect '/'
  end

end

post '/signup' do
  #add new user logic
  @new_user = User.create(params)
  @error_messages = @new_user.errors.full_messages

  erb :signup
end

get '/logout' do 
  session.clear
  redirect '/'
end


