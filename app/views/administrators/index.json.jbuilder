json.array!(@administrators) do |administrator|
  json.extract! administrator, :id, :person_id, :start_date
  json.url administrator_url(administrator, format: :json)
end
