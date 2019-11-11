Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, :polls, :comments, :votes
  
  # get '/signup' to: "users#create"

end
