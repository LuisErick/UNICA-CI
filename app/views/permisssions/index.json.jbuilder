json.array!(@permisssions) do |permisssion|
  json.extract! permisssion, :id, :name, :description
  json.url permisssion_url(permisssion, format: :json)
end
