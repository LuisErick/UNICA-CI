json.array!(@unica_people) do |unica_person|
  json.extract! unica_person, :id, :person_id, :college_id, :semester
  json.url unica_person_url(unica_person, format: :json)
end
