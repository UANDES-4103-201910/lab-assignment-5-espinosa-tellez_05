json.extract! event, :id, :name, :description, :start_date, :event_venue, :created_at, :updated_at
json.url event_url(event, format: :json)
