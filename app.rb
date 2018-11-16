require 'sinatra/base'
require 'capybara'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

Capybara.app

class Battle < Sinatra::Base
enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack_p1' do
    @game.attack(@game.player_2)
    erb :attack_p1
  end

  get '/attack_p2' do
    @game.attack(@game.player_1)
    erb :attack_p2
  end



 # show switch turns
 # during turn display own hitpoint



  # start the server if ruby file executed directly
  run! if app_file == $0
end
