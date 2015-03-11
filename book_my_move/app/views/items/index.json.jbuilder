json.array!(@items) do |item|
  json.extract! item, :id, :subcategory_id, :item_name, :item_desc, :item_image
  json.url item_url(item, format: :json)
end
