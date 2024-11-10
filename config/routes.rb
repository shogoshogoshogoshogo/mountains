Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
   root to: "mountains#index"
   resources :mountains do
    resources :comments, only: :create
end
end