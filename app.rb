require 'sinatra/base'
require_relative './lib/player'

class SandwichBattle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # sandwich_arr = [" Toasted with cheese", " Wholemeal", " Vegetarian", " No-mayo"]
    # session[:player_1_name] = params[:player_1_name]# + sandwich_arr.pop
    # session[:player_2_name] = params[:player_2_name]# + sandwich_arr.pop
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    $player_1
    $player_2
    erb :play
  end

  get '/attack' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
