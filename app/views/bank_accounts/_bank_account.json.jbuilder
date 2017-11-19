json.extract! bank_account, :id, :account_number, :currency, :enable_sms_alert, :enable_email_alert, :account_type_id, :account_officer, :created_at, :updated_at
json.url bank_account_url(bank_account, format: :json)
