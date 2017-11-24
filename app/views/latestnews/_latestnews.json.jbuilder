json.extract! latestnews, :id, :title, :description, :image, :created_at, :updated_at
json.url latestnews_url(latestnews, format: :json)
