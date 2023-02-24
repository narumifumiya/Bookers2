Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  
  resources :books, only: [:index, :show, :edit]
  
end
