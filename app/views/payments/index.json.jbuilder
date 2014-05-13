json.array!(@payments) do |payment|
  json.extract! payment, :id, :matricualtion_id, :payment_type_id, :payment_day, :receipt_number
  json.url payment_url(payment, format: :json)
end
