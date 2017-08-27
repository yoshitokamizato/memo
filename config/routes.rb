Rails.application.routes.draw do
  root to: 'main#main'
  get 'main' => 'main#main'
  get '/main/new' => 'main#new'
  post '/main' => 'main#create'
end
