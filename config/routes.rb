Rails.application.routes.draw do
  get 'inu' => 'home#neko'
  get 'home/index' => 'home#index'
  get 'home/show' => 'home#show'
  post 'home/create' =>'home#create'
end
