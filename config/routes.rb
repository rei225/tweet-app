Rails.application.routes.draw do
  root 'post#home'
  get "/help" , to: "post#help"
  get "/about", to: "post#about"
  get "/contact", to:"post#contact"
  get "/signup", to:"users#new"
  resources :users
end
