Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :blogs
  post '/login', to: 'authentication#login'
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
