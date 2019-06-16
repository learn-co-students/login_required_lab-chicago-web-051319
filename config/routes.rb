Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get 'secrets/show', to: 'secrets#show'
  resources :sessions, only: [:new, :create, :index]
  post 'sessions/destroy', to: 'sessions#destroy'
end
