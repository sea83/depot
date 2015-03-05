json.array!(@products) do |product|
  json.extract! product, :id, :name, :discription, :price, :weight
  json.url product_url(product, format: :json)
end
