json.extract! article, :id, :label, :price, :description, :created_at, :updated_at
json.url article_url(article, format: :json)
