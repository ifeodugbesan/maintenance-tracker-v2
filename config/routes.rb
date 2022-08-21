Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :networks do
    resources :waterpoints, only: :index
  end
  resources :waterpoints, except: :index
  get 'dashboard', to: 'users#dashboard', as: :dashboard
end
