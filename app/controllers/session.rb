#login, authenticate user, assign user_id to session
post '/login' do

  @user = User.authenticate(params[:login][:username], params[:login][:password])

  if @user
    session[user_id] = @user.id
    redirect '/decks'
  else
    # flash message invalid login
    redirect '/'
  end
end

post '/logout' do 
  session.clear
end


