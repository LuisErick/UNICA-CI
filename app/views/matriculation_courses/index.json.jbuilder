json.array!(@matriculation_courses) do |matriculation_course|
  json.extract! matriculation_course, :id, :matriculation_id, :package_id, :start_date, :end_date, :final_grade
  json.url matriculation_course_url(matriculation_course, format: :json)
end
