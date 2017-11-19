json.extract! loan_payment, :id, :loan_id, :principal_expected, :principal_paid, :interest_expected, :interest_paid, :charges_paid, :date_of_payment, :created_at, :updated_at
json.url loan_payment_url(loan_payment, format: :json)
