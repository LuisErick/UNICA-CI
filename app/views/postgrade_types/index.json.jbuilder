json.array!(@postgrade_types) do |postgrade_type|
  json.extract! postgrade_type, :id, :name, :description
  json.url postgrade_type_url(postgrade_type, format: :json)
end
