Rails.application.routes.draw do
  resources :messages

  resources :replies

  devise_for :users
  root 'game#index'
  get 'admin', :to => 'admin#index'


end
