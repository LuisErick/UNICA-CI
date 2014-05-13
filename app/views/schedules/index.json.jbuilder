json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :days, :start_time, :end_time, :week_days, :number_of_sessions
  json.url schedule_url(schedule, format: :json)
end
