Rails.application.routes.draw do
  root to: 'feelings#index'

  get     '/feelings',          to: 'feelings#index'
end
