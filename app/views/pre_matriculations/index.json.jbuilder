json.array!(@pre_matriculations) do |pre_matriculation|
  json.extract! pre_matriculation, :id, :person_id, :curse_type_id, :languaje_id, :state
  json.url pre_matriculation_url(pre_matriculation, format: :json)
end
