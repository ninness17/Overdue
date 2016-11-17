json.extract! book, :id, :name, :author, :due_date, :user_id, :created_at, :updated_at
json.url book_url(book, format: :json)