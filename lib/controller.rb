class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/gossips/new/' do
    'Hello World'
  end

  post '/gossips/new/' do
    puts 'Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal'
  end

  get '/gossips/new/' do
    erb :new_gossip
  end
end
