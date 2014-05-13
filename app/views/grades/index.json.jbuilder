json.array!(@grades) do |grade|
  json.extract! grade, :id, :matriculation_course_id, :value, :grade_type_id
  json.url grade_url(grade, format: :json)
end
