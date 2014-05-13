json.array!(@people) do |person|
  json.extract! person, :id, :user_id, :paternal_lastname, :maternal_lastname, :name, :dni, :address, :district, :province, :department, :home_phone, :mobile_phone, :sex, :birthday, :birthplace, :marital_status_id
  json.url person_url(person, format: :json)
end
