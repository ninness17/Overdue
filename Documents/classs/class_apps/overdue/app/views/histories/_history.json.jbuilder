json.extract! history, :id, :name, :author, :user_id, :created_at, :updated_at
json.url history_url(history, format: :json)