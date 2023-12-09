Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  resources :posts
  # RESTful
  # - list(index), show, new, edit, create, update, delete

  namespace :admin do
    resources :sessions, only: [:new, :create, :destroy]
    # login screen, POST to create session
    resources :samples, only: [:index]
  end

  root "posts#index"
end
