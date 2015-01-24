json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :description, :cost, :qty, :image, :brand, :slug
  json.url product_url(product, format: :json)
end
