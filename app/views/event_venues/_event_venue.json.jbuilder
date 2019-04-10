json.extract! event_venue, :id, :name.string, :address, :capacity, :created_at, :updated_at
json.url event_venue_url(event_venue, format: :json)
