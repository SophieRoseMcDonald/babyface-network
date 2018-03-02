Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  root 'home#index'

  devise_for :users

  resources :chats, only: [:index, :show, :create] do
    resources :messages, only:[:create, :index]
  end

  resources :posts do
    resources :comments
  end

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
