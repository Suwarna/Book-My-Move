json.array!(@admins) do |admin|
  json.extract! admin, :id, :admin_fname, :admin_lname, :admin_mobile, :admin_username, :admin_password
  json.url admin_url(admin, format: :json)
end
