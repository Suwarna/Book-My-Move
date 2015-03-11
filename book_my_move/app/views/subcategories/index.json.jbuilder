json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :id, :category_id, :subcategory_name, :subcategory_desc
  json.url subcategory_url(subcategory, format: :json)
end
