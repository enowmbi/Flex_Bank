json.extract! entry, :id, :date, :description, :debit_account_id, :credit_account_id, :amount, :created_at, :updated_at
json.url entry_url(entry, format: :json)
