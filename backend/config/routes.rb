Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "login", to: "authentication#login"
  resources :users, only: [:create]
  get 'users', to: "users#show"
  get 'friend_goals', to: "users#friend_goals"
end
