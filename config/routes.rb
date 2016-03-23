Rails.application.routes.draw do
  root to: 'feelings#index'

  resources :feelings do
    resources :cheerups
    resources :posts
    resources :tags
  end
end
