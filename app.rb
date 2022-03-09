require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    p params
    erb(:index)
  end

  post '/names' do
    @player_one = params[:player_one_name]
    @player_two = params[:player_two_name]
    erb(:play)
  end

  run! if app_file == $0
end
