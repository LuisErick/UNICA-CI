json.array!(@grade_types) do |grade_type|
  json.extract! grade_type, :id, :name, :description
  json.url grade_type_url(grade_type, format: :json)
end
