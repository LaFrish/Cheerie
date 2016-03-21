Rails.application.routes.draw do
  root to: 'feelings#index'

  resources :feelings do
    resources :sad
  end
end
