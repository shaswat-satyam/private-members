json.extract! event, :id, :name, :description, :date, :venue, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
