get '/' do
  # Look in app/views/index.erb
  erb :signin
end

post '/user' do
# here,  we will authenticate user and if success, assign user_id to sessions
  erb :flashboard
end

get '/deck/:deck_id' do
  #assign deck and user to new game instance
  erb :card #playing_board
end

#playing the game
post '/game/deck/' do
  #params[:answer], check if right or wrong
  #wrong answer route
  #next card route
end

#ending the game
