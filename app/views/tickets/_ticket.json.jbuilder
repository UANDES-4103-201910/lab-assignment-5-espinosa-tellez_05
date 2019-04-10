json.extract! ticket, :id, :ticket_type, :order, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
