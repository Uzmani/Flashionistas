#login, authenticate user, assign user_id to session
post '/login' do
  puts '*'*100
  p params

  p @user = User.authenticate(params[:username], params[:password])

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
end

get '/logout' do 
  session.clear
  redirect '/'
end


