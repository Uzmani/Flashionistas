#home page, shows login
get '/' do
  # Look in app/views/index.erb
  erb :signin
end



#go to decks
get '/decks' do
  @decks = Deck.all
  erb :flashboard
end

#select a deck
#assign deck and user to new game instance
post '/deck/:deck_id' do
  #params[:deck_id]
  erb :card
end

#begin game
#show FIRST/NEXT card of deck
get '/game/:deck_id/:card_id' do
  
end

#check guess
#route answer if right/wrong
post '/game/:deck_id/:card_id' do
  #params[:answer]

  if #right answer
    if #last card
        #game finished
        erb :summary #success page
    end
    redirect  #go to NEXT card
  else #if wrong answer
    #render SAME card with "wrong answer" message
  end
    
end

#game is finished
get '/success' do

end


