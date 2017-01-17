require 'sinatra'
require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @name_01 = params[:name_01]
    @name_02 = params[:name_02]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end