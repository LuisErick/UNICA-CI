json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :name, :description
  json.url faculty_url(faculty, format: :json)
end
