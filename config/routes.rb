Rails.application.routes.draw do
  get 'hosts/show'

  get 'home/index'

  devise_for :hosts, path: 'hosts', controllers: { sessions: "hosts/sessions"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions"}
  resources :hosts, :only => [:show] do
    resources :comments, only: [:create]
    resources :books, only: [:create, :destroy]
  end
  
  root 'home#index'
  get 'home/signin'
  get 'home/signup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
