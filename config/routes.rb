# frozen_string_literal: true

Rails.application.routes.draw do
  root 'trips#index', as: 'home'

  resources :trips
  resources :drivers
  resources :passengers

  post '/passengers', to: 'passengers#create'
  get '/passengers/:id', to: 'passenger#show', as: 'show_passenger'
  patch '/passengers/:id', to: 'passengers#update'
  delete '/passengers/:id', to: 'passengers#destroy', as: 'delete_passenger'

  get '/passengers/:passenger_id/trips/:trip_id', to: 'trips#show', as: 'show_trip_details'
  post '/trips', to: 'trips#new'
  patch '/trips/:id', to: 'trips#update', as: 'update_trip'
  post '/trips/:id/rating', to: 'trips#update_rating', as: 'update_rating'
  post '/passengers/:passenger_id/trips/:trip_id', to: 'trips#create', as: 'request_trip'

  delete '/trips/:id', to: 'trips#destroy', as: 'delete_trip'

end
