Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get "home/about"
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :update, :index]
end
