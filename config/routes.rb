Rails.application.routes.draw do
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
end
