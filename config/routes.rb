Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  root 'post#home'
  get "/help" , to: "post#help"
  get "/about", to: "post#about"
  get "/contact", to:"post#contact"
  get "/signup", to:"users#new"
  get "/login", to:"sessions#new"
  post "/login", to:"sessions#create"
  delete "/logout", to:"sessions#destroy"
  resources :users do 
    member do 
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new,:create,:edit,:update]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
