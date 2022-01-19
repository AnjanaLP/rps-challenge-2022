require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/result' do
    @game = Game.new(params[:player_weapon])
    @game.end
    erb :result
  end

  run! if app_file == $0
end
