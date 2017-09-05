Rails.application.routes.draw do
  devise_for :users
  root to: 'main#main'
  get '/main' => 'main#main'
  get '/main/new' => 'main#new'
  post '/main' => 'main#create'
  delete '/main/:id' => 'main#destroy'
end
