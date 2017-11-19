json.extract! group_member, :id, :first_name, :middle_name, :last_name, :address, :phone, :email, :identification_type_id, :identification_number, :client_id, :created_at, :updated_at
json.url group_member_url(group_member, format: :json)
