Rails.application.routes.draw do
  resources :products
  resources :establishment

  get 'establishment/list_products'

  get 'restaurants/index'

  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
