Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :customers
  scope module: :public do
    root to: 'homes#top'

  resource "customers",only: [:show,:edit,:update]

  resources "items",only: [:index,:show]
  resources :cart_items
  delete 'cart_items' => 'cart_items#reset'
end

namespace :admin do
  resources :genres, only: [:index,:new,:create,:edit,:update]
end
end
