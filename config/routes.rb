Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :produtos, only: [:new, :create,:destroy, :get]
  resources :leads, only: [:new, :create, :destroy, :get]
  resources :posts, only: [:get, :create, :destroy]
  resources :writer, only: [:new, :index]
  get 'posts/:id/:friendlyUrl', to: 'posts#show', as: :post_show
  root "home#index"
end
  