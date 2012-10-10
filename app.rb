# coding: utf-8
require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    @quote = [
      "チェシャ猫「どっちがいいかわからないときはどっちも一緒だよ」", 
      "隣の席の人「難しく考えすぎなんですよ( ｰ`дｰ´)ｷﾘｯ」", 
      "ごろー「まぁ、自分の信じる道を突き進めばいいんじゃないかなぁ」"
    ].sample
    slim :index
  end

  post '/result' do
    @choice = params[:items].sample
    slim :result
  end
end
