json.extract! loan, :id, :principal_requested, :principal_approved, :interest, :percent, :paid_in_full, :loan_officer_id, :created_at, :updated_at
json.url loan_url(loan, format: :json)
