json.array!(@postgrade_people) do |postgrade_person|
  json.extract! postgrade_person, :id, :person_id, :postgrade_type_id
  json.url postgrade_person_url(postgrade_person, format: :json)
end
