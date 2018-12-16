Rails.application.routes.draw do
  root 'home#index'
    get 'user/new'
    get 'user/edit'
    get 'user/show'

  resources :user, only:[:new, :create, :destroy]




end
