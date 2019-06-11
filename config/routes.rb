Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/2' => 'home#index2'
  get '/3' => 'home#index3'
  post 'home/create' =>'home#create'
end
