Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :networks do
    member do
      post :increase
      post :decrease
    end
    resources :waterpoints, only: [:index, :new, :create, :edit, :update]
  end
  resources :tasks do
    get :completed, on: :member
    collection do
      get :export, defaults: { format: :csv }
    end
    resources :comments, only: [:new, :create, :edit]
  end
  resources :waterpoints, only: [:destroy]
  resources :equipments do
    collection do
      get :export, defaults: { format: :csv }
    end
  end
  resources :services
  resources :comments, only: [:update, :destroy]
  get 'dashboard', to: 'users#dashboard', as: :dashboard
  get 'technicians', to: 'users#index', as: :technicians
  get 'statistics', to: 'pages#stats', as: :stats
end
