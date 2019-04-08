Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects do
    resources :images, only: [:new, :create, :edit, :update]
  end

  resources :users, only: [:show]
end
