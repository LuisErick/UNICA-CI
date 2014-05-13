json.array!(@documents) do |document|
  json.extract! document, :id, :matriculation_validate_id, :document_type_id, :document_code
  json.url document_url(document, format: :json)
end
