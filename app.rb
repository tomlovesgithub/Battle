require 'sinatra/base'

class SandwichBattle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # sandwich_arr = [" Toasted with cheese", " Wholemeal", " Vegetarian", " No-mayo"]
    # session[:player_1_name] = params[:player_1_name]# + sandwich_arr.pop
    # session[:player_2_name] = params[:player_2_name]# + sandwich_arr.pop
    $player_1_name = params[:player_1_name]
    $player_2_name = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    $player_1_name
    $player_2_name
    erb :play
  end

  get '/attack' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    $player_1_name
    $player__name
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
