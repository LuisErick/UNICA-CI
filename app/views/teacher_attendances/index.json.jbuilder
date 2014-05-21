json.array!(@teacher_attendances) do |teacher_attendance|
  json.extract! teacher_attendance, :id, :package_id, :state, :arrival_time, :dismissal_time, :session_number, :day
  json.url teacher_attendance_url(teacher_attendance, format: :json)
end
