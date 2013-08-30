get '/' do
  # Look in app/views/index.erb
  erb :signin
end

post '/user' do
# here,  we will authenticate user and if success, assign user_id to sessions

  erb :flashboard
end

get '/deck/:id'

end
