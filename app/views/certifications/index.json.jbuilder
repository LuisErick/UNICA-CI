json.array!(@certifications) do |certification|
  json.extract! certification, :id, :matriculation_id, :state, :delivery_date
  json.url certification_url(certification, format: :json)
end
