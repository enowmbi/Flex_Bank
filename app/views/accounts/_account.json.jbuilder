json.extract! account, :id, :name, :code, :description, :contra, :parent_id, :account_type_id, :created_at, :updated_at
json.url account_url(account, format: :json)
