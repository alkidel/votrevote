Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :decisions do
    resources :votes, only: [:create, :new]
  end
  resources :votes [:edit, :update, :destroy]
  resources :town, only: [:create, :new]
  resources :users, only: [:destroy, :edit, :update, :show]
end
