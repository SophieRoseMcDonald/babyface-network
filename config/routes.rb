Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :posts do
    resources :comments
  end
  resources :users
  resources :messages
  resources :conversations
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
