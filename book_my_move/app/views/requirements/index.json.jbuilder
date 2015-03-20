json.array!(@requirements) do |requirement|
  json.extract! requirement, :id, :requirement_date, :client_id, :requirement_from, :requirement_to, :requirement_lift, :requirement_floor, :requirement_parking, :requirement_extra_service, :requirement_datetomove
  json.url requirement_url(requirement, format: :json)
end
