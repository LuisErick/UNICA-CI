json.array!(@matriculation_validates) do |matriculation_validate|
  json.extract! matriculation_validate, :id, :matriculation_id, :institution, :state
  json.url matriculation_validate_url(matriculation_validate, format: :json)
end
