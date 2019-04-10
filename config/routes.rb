Rails.application.routes.draw do
  resources :events
  resources :users
  resources :tickets
  resources :event_venues
  resources :event
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
