Rails.application.routes.draw do
root 'home#index'
resources :user, only:[:create, :new]
resources :sessions, only:[:new, :create, :destroy]

end
