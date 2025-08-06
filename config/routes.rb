Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: 'about'

  resources :post_books, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show]
  
end
