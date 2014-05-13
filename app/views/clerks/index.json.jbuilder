json.array!(@clerks) do |clerk|
  json.extract! clerk, :id, :person_id, :start_date
  json.url clerk_url(clerk, format: :json)
end
