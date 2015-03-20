json.array!(@requirement_items) do |requirement_item|
  json.extract! requirement_item, :id, :requirement_id, :item_id
  json.url requirement_item_url(requirement_item, format: :json)
end
