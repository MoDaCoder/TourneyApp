Rails.application.routes.draw do
  devise_for :users, :controllers => { omniauth_callbacks: "callbacks" }
  root to: 'application#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 