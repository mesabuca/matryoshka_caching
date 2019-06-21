json.extract! author, :id, :name, :bio, :created_at, :updated_at
json.url author_url(author, format: :json)
