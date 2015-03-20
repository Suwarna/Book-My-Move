json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :feedback_message, :vendor_id
  json.url feedback_url(feedback, format: :json)
end
