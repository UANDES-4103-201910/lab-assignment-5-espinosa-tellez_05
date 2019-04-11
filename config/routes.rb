Rails.application.routes.draw do
  resources :events
  resources :users do
  	get 'user_with_most_tickets', on: :collection
  end
  resources :tickets
  resources :event_venues
  resources :event
  resources :ticket_types do
  	resources :tickets
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
