require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


require_relative 'db/connection'
# require_relative 'models/trainer'
require_relative 'models/pokemon'

get'/' do
	erb :"pokemons/menu"
end

get '/pokemons' do
	@pokemons = Pokemon.all
	erb :"pokemons/index"
end

get '/pokemons/new' do
  erb :"pokemons/new"
end

get '/pokemons/:id' do
	@pokemon = Pokemon.find(params[:id])
	erb :"pokemons/show"
end

get "/pokemons/:id/edit" do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemons/edit")
end

post '/pokemons' do
  @pokemon = Pokemon.create(name: params[:name], poke_type: params[:poke_type], cp: params[:cp], img_url: params[:img_url])
  redirect "/pokemons/#{@pokemon.id}"
end

