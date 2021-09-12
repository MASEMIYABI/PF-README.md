Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #会員側
  devise_for :customers
  scope module: :public do
    root to: 'homes#top'

  resource "customers",only: [:show,:edit,:update]

  resources "items",only: [:index,:show]
  resources :cart_items
  delete 'cart_items' => 'cart_items#reset'
end
# 管理者側

namespace :admins do

  resources :genres, only: [:index,:new,:create,:edit,:update]
  resources :items, only: [:index,:new,:create,:show,:edit,:update]
end

devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}
end
