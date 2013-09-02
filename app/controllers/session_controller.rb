#login, authenticate user, assign user_id to session
post '/login' do
  @user = User.authenticate(params[:username], params[:password])

  if @user # won't trigger if user=nil
    session[:user_id] = @user.id
    redirect '/decks'
  elsif
    @user = User.new
    @user.login_error# flash message invalid login
    erb :signup
  end
end

post '/signup' do
  @user = User.new(params)
  redirect '/decks' if @user.save
  erb :signup
end

get '/logout' do 
  session.clear
  redirect '/'
end


