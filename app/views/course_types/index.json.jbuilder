json.array!(@course_types) do |course_type|
  json.extract! course_type, :id, :name, :description
  json.url course_type_url(course_type, format: :json)
end
