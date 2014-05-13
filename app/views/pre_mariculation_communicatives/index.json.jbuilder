json.array!(@pre_mariculation_communicatives) do |pre_mariculation_communicative|
  json.extract! pre_mariculation_communicative, :id, :pre_matriculation_id, :level_id
  json.url pre_mariculation_communicative_url(pre_mariculation_communicative, format: :json)
end
