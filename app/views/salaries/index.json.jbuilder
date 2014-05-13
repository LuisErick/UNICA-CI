json.array!(@salaries) do |salary|
  json.extract! salary, :id, :teacher_attendance, :amount
  json.url salary_url(salary, format: :json)
end
