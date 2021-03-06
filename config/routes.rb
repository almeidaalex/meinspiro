Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :produtos, only: [:new, :create,:destroy, :get]
  resources :leads, only: [:new, :create,:destroy, :get]
  get "produtos/busca" => "produtos#busca", as: :busca_produto
  
  root "home#index"
end
