Rails.application.routes.draw do
  get 'favorites/update'

  devise_for :users
  root 'posts#index'

  resources :favorites
  resources :posts do 
  resources :comments, only: [:create, :destroy]
  end
  resources :likes, only: [:create, :destroy ]

end
