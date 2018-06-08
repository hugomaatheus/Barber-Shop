json.extract! product, :id, :nome, :valor, :created_at, :updated_at
json.url product_url(product, format: :json)
