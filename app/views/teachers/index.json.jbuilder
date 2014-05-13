json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :person_id, :start_date
  json.url teacher_url(teacher, format: :json)
end
