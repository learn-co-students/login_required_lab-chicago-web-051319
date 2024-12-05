Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'sessions#new'
resources :sessions, except: [:edit, :update]
post '/sessions/destroy', to: 'sessions#destroy'
get '/secrets/show', to: 'secrets#show'
end
