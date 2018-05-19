Rails.application.routes.draw do
  get 'home/index'

  devise_for :hosts, path: 'hosts', controllers: { sessions: "hosts/sessions"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions"}
  
  root 'home#index'
  get 'home/signin'
  get 'home/signup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
