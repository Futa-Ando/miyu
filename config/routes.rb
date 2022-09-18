Rails.application.routes.draw do
  get 'lectures/index'
  get 'lectures/new'
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'tweets#index'
  get 'ranks/index' => 'ranks#index'
  get 'lectures/index'  => 'lectures#index'
  get 'lectures/new'  => 'lectures#new'
  post 'lectures/new'  => 'lectures#create'

end
