Rails.application.routes.draw do
  resources :games do
    resources :cars
  end
  get 'page/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
