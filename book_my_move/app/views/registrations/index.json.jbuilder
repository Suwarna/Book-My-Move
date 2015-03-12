json.array!(@registrations) do |registration|
  json.extract! registration, :id, :registration_fname, :registration_lname, :registration_email, :registration_mobile, :registration_landline, :registration_state, :registration_district, :registration_taluka, :registration_city, :registration_address, :registration_pincode, :registration_username, :registration_password, :registration_type
  json.url registration_url(registration, format: :json)
end
