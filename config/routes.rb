Rails.application.routes.draw do

  # authenticated :user do
  #   root to: 'users#show', as: :authenticated_root
  # end  

  devise_for :users
    resources :users, only: [:show]


  root to: 'welcome#index'

end
