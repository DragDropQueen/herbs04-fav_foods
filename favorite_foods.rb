require 'sinatra/base'

class FavoriteFoods < Sinatra::Application

  get '/' do
    foods = DB[:fav_food]
    erb :index, locals: {:foods => foods}
  end

  post '/' do
    foods = DB[:fav_food]
    foods.insert(:name => params[:food_name])
    redirect '/'
  end
end
