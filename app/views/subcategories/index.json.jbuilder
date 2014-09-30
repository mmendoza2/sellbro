json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, 
  json.url subcategory_url(subcategory, format: :json)
end
