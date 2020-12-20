Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show]
  get '/users' , to: 'users#index'
  root to: 'homes#top'
  get 'home/about' , to:'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
