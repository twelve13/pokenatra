require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


require_relative 'db/connection'
# require_relative 'models/trainer'
require_relative 'models/pokemon'

get '/pokemons' do
	@pokemons = Pokemon.all
	erb :"pokemons/index"
end


get '/pokemons/:id' do
	@pokemon = Pokemon.find(params[:id])
	erb :"pokemons/show"
end