Rails.application.routes.draw do
  devise_for :users
  root 'game#index'
  get 'admin', :to => 'admin#index'


end
