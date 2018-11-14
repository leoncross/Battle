require 'sinatra/base'
require 'capybara'
require_relative 'lib/player.rb'

Capybara.app

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end


  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_health = $player_1.health
    @player_2_health = $player_2.health
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_health = $player_1.health
    @player_2_health = $player_2.health
    @player_1_health = $player_1.attacked
    @player_2_health = $player_2.attacked
    erb :attack
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
