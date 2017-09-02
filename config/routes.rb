Rails.application.routes.draw do
  devise_for :users
  root 'messages#index'
  get 'admin', :to => 'admin#index'
end
