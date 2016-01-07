json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :date, :company, :tax, :staffperson
  json.url invoice_url(invoice, format: :json)
end
