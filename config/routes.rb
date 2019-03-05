Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :decisions do
    resources :votes, only: [:create, :new]
    resources :comments, only: [ :create ]
  end
  resources :comments, only: [:edit, :update, :destroy]
  resources :votes, only: [:edit, :update, :destroy] do
    member do
      get 'accepted', to: 'votes#accepted'
      get 'rejected', to: 'votes#rejected'
    end
  end
  resources :town, only: [:create, :new]
  resources :users, only: [:destroy, :edit, :update, :show]

  get 'former', to: 'decisions#former', as: :former
  get 'pdf_pages', :to => 'decisions#index_pdf', format: 'pdf'
end
