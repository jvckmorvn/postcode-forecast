# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'forecasts#new'
  resources :forecasts, only: :create
  get 'forecast/:id', to: 'forecasts#show', as: :forecast
end
