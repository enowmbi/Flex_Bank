json.extract! employee, :id, :first_name, :middle_name, :last_name, :address, :city, :phone, :email, :identification_type_id, :identification_number, :department_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
