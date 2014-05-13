json.array!(@students) do |student|
  json.extract! student, :id, :person_id, :acceptance_date
  json.url student_url(student, format: :json)
end
