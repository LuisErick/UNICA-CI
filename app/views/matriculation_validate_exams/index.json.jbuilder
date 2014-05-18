json.array!(@matriculation_validate_exams) do |matriculation_validate_exam|
  json.extract! matriculation_validate_exam, :id, :matriculation_validate, :grade
  json.url matriculation_validate_exam_url(matriculation_validate_exam, format: :json)
end
