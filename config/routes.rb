Rails.application.routes.draw do

  # authenticated :user do
  #   root 'users#show', as: :authenticated_root
  # end  

  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:create]
  end

  root to: 'welcome#index'

end