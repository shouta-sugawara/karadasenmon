Rails.application.routes.draw do
  root 'welcome#index'

  get 'diagnosis', to: 'welcome#diagnosis'
  get 'traffic_accident', to: 'welcome#traffic_accident'
  get 'recruitment', to: 'welcome#recruitment'
  get 'about', to: 'welcome#about'
  get 'bruise', to: 'welcome#bruise'
  get 'muscle', to: 'welcome#muscle'
  get 'sleeping', to: 'welcome#sleeping'
  get 'lumbago', to: 'welcome#lumbago'
  get 'pain_shoulder', to: 'welcome#pain_shoulder'
  get 'knee_pain', to: 'welcome#knee_pain'
  get 'back_pain', to: 'welcome#back_pain'
  get 'stiff_shoulder', to: 'welcome#stiff_shoulder'
  get 'tenosynovitis', to: 'welcome#tenosynovitis'
  get 'hallux_valgus', to: 'welcome#hallux_valgus'
  get 'flat_foot', to: 'welcome#flat_foot'
  get 'posture', to: 'welcome#posture'

  resources :blogs
  resources :reviews
  resources :notifications

  devise_for :users, controllers: {
    sessions: "users/sessions",
    passwords: "users/passwords",
    registrations: "users/registrations",
    unlocks: "users/unlocks",
    confirmations: "users/confirmations"
  }

  namespace :admin do
    root to: "users#index"

    resources :users
    resources :blogs do
      collection do
        post :upload_image
      end
    end
    resources :reviews do
      collection do
        post :upload_image
      end
    end
    resources :notifications do
      collection do
        post :upload_image
      end
    end

    get '/sitemap.xml.gz' => redirect('http://karadasenmon.site/sitemap.xml.gz')
  end
end
