Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :events, except: [:edit, :update, :destroy]
  get '/sign_in', to: 'users#sign_in'
  post '/sign_in', to: 'users#new_session'
end
