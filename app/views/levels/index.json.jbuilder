json.array!(@levels) do |level|
  json.extract! level, :id, :name, :description
  json.url level_url(level, format: :json)
end
