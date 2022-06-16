Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'forecasts#new'
  resources :forecasts, only: %i[create show]
end
