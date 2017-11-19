json.extract! client, :id, :first_name, :middle_name, :last_name, :address, :city, :phone, :email, :identification_type_id, :identification_number, :client_type_id, :created_at, :updated_at
json.url client_url(client, format: :json)
