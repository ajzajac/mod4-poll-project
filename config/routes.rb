Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, :polls, :comments, :votes

  post "/signup", to: "users#create"
  post "/login", to: "login#login"

end
