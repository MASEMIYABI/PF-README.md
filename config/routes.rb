Rails.application.routes.draw do
  resources :produst_comments,only: [:index,:show,:new, :update, :create, :destroy]
  get 'card/new'
  get 'card/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #会員側
  devise_for :customers
  scope module: :public do
    root to: 'homes#top'
    resource "customers",only: [:show,:edit,:update]
    resources :shops,only: [:index,:new,:create,:show,:edit,:update]
    resources :items,only: [:index,:show]
    resources :cart_items, only: [:index, :update, :create, :destroy]
    delete 'cart_items' => 'cart_items#reset'
    resources :orders,only: [:index,:show,:new,:create] do
    resources :reservations
    collection do
      post 'confirm'
      get 'complete'
    end
  end
  get '/search', to: 'searches#search'#検索
  end

  # 管理者側

namespace :admins do
  resource :admins,only: [:show,:edit,:update]
  resources :genres, only: [:index,:new,:create,:edit,:update]
  resources :items, only: [:index,:new,:create,:show,:edit,:update]
  resources :shops,only: [:index,:new,:create,:show,:edit,:update]
end

devise_for :admins, controllers: {
  sessions: 'admins/sessions'
}
#お問い合わせ
resources :contacts, only: [:new, :create]
post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
post 'contacts/back', to: 'contacts#back', as: 'back'
get 'done', to: 'contacts#done', as: 'done'

#カード支払い
resources :card, only: [:new, :show] do
  collection do
    post 'show', to: 'card#show'
    post 'pay', to: 'card#pay'
    post 'delete', to: 'card#delete'
  end
end

end