Rails.application.routes.draw do
  root 'welcome#index'

  get 'diagnosis', to: 'welcome#diagnosis'
  get 'traffic_accident', to: 'welcome#traffic_accident'
  get 'recruitment', to: 'welcome#recruitment'
  get 'about', to: 'welcome#about'

  resources :blogs
  resources :reviews

  namespace :admin do
    devise_for :users, controllers: {
      sessions: "users/sessions",
      passwords: "users/passwords",
      registrations: "users/registrations",
      unlocks: "users/unlocks",
      confirmations: "users/confirmations"
    }
    root to: "users#index"
    
    resources :users
    resources :blogs do
      collection do
        post :upload_image
      end
    end
    resources :reviews
    resources :notifications
  end
end
