json.array!(@salaries) do |salary|
  json.extract! salary, :id, :teacher_attendance_id, :amount
  json.url salary_url(salary, format: :json)
end
