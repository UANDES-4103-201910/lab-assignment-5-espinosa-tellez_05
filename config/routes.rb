Rails.application.routes.draw do
  get 'users/create', to: 'users#create'
  get 'users/update', to: 'users#update'
  get 'users/destroy', to: 'users#destroy'
  get 'ticket_zones/create', to: 'ticket_zones#create'
  get 'ticket_zones/update', to: 'ticket_zones#update'
  get 'ticket_zones/destroy', to: 'ticket_zones#destroy'
  get 'ticket_types/create', to: 'ticket_types#create'
  get 'ticket_types/update', to: 'ticket_types#update'
  get 'ticket_types/destroy', to: 'ticket_types#destroy'
  get 'tickets/create', to: 'tickets#create'
  get 'tickets/update', to: 'ticket#update'
  get 'tickets/destroy', to: 'ticket#destroy'
  get 'orders/create', to: 'orders#create'
  get 'orders/update', to: 'orders#update'
  get 'orders/destroy', to: 'orders#destroy'
  get 'event_venues/create', to: 'event_venues#create'
  get 'event_venues/update', to: 'event_venues#update'
  get 'event_venues/destroy', to: 'event_venues#destroy'
  get 'events/create', to: 'events#create'
  get 'events/update', to: 'events#update'
  get 'events/destroy', to: 'events#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
