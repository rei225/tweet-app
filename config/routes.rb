Rails.application.routes.draw do
 
  root 'post#home'
  get 'post/home'
  get 'post/help'
  get 'post/about'
end
