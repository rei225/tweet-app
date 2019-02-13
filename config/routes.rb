Rails.application.routes.draw do
  get 'sessions/new'
  root 'post#home'
  get "/help" , to: "post#help"
  get "/about", to: "post#about"
  get "/contact", to:"post#contact"
  get "/signup", to:"users#new"
  get "/login", to:"sessions#new"
  post "/login", to:"sessions#create"
  delete "/logout", to:"sessions#destroy"
  resources :users
end
