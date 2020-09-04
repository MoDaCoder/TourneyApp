Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  devise_for :users, :controllers => { omniauth_callbacks: "callbacks" }
  root to: 'application#home'
  resources :matches
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 