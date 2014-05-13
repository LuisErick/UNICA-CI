json.array!(@teacher_attendaces) do |teacher_attendace|
  json.extract! teacher_attendace, :id, :package_id, :state, :arrival_time, :dismissal_time, :session_number, :day
  json.url teacher_attendace_url(teacher_attendace, format: :json)
end
