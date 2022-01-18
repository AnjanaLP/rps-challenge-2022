require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @weapon = session[:weapon]
    erb :play
  end

  post '/play' do
    session[:weapon] = params[:weapon]
    redirect '/play'
  end

  run! if app_file == $0
end
