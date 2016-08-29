json.extract! title, :id, :name, :body, :created_at, :updated_at
json.url title_url(title, format: :json)