json.array!(@matricualtion_validates) do |matricualtion_validate|
  json.extract! matricualtion_validate, :id, :matriculation_id, :institution
  json.url matricualtion_validate_url(matricualtion_validate, format: :json)
end
