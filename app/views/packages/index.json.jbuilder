json.array!(@packages) do |package|
  json.extract! package, :id, :teacher_id, :schedule_id, :room_id
  json.url package_url(package, format: :json)
end
