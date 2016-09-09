Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    resources :groups, :only => [:index, :create]
    resources :places, :only => [:index, :create]
    resources :users, :only => [:create]
    resources :trips, :only => [:index,:show, :create, :destroy]
    post '/trips/:id/join', to: 'trips#join'
    post 'trips/:id/leave', to: 'trips#leave'
  end
end
