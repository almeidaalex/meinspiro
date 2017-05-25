Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :produtos, only: [:new, :create, :destroy, :get]
  resources :leads, only: [:new, :create, :destroy, :get]
  resources :posts
  
  get 'writer', to: 'writer#index', as: :writer_index
  get 'writer/new', to: 'writer#new', as: :writer_new
  get 'writer/:id', to: 'writer#show', as: :writer_show

  get 'posts/:id/:friendlyUrl', to: 'posts#show', as: :post_show
  root "home#index"
end
  