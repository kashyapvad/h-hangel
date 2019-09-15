Rails.application.routes.draw do

  resources :users
  get '/' => 'creatives#index'
  get 'freelancers/index'
  get 'creatives/success'
  get 'creatives/exist'
  post 'creatives/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
