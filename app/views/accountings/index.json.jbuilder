json.array!(@accountings) do |accounting|
  json.extract! accounting, :id, :commodity_id, :book_id
  json.url accounting_url(accounting, format: :json)
end
