class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get '/recipes' do
  end

  get '/recipes/new' do
    erb :new
  end

  post '/recipes' do
    Recipe.new(name:params[:name], ingredients:params[:ingredients], cook_time:params[:cook_time])
  end

end
