Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :produtos, only: [:new, :create,:destroy, :get]
  resources :leads, only: [:new, :create, :destroy, :get]
  resources :posts, only: [:get, :show]
  resources :writer, only: [:get, :create, :new]
  get 'leads/thanks',to: 'leads#thanks', as: :leads_thanks 
  root "home#index"
end
  