Rails.application.routes.draw do
  devise_for :users
  root 'game#index'
  get 'admin', :to => 'admin#index'

  get '/message/:id', to: 'message#show'

  delete "/message/:id" => "admin#destroy_message"
  get "/message/:id" => "admin#show_message"

end
