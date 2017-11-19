json.extract! transaction, :id, :transaction_date, :description, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
