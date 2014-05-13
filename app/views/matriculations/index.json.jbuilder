json.array!(@matriculations) do |matriculation|
  json.extract! matriculation, :id, :pre_matriculation_id, :acceptance_day
  json.url matriculation_url(matriculation, format: :json)
end
