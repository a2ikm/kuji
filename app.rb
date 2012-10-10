# code: utf-8
require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    slim :index
  end

  post '/result' do
    @choice = params[:items].sample
    slim :result
  end
end
