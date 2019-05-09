Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/contact'
  get 'pages/about'

  resources :projects do
    resources :images, only: [:new, :create]
  end
  resources :images, only: [:edit, :update, :destroy]
  resources :users, only: [:show]
end
