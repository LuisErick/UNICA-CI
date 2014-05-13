json.array!(@student_attendances) do |student_attendance|
  json.extract! student_attendance, :id, :matriculation_course_id, :attendance_date, :state
  json.url student_attendance_url(student_attendance, format: :json)
end
