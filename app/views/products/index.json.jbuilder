json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :description, :cost, :pty, :image, :brand
  json.url product_url(product, format: :json)
end
