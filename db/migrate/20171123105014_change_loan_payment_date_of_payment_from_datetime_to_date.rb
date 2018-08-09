class ChangeLoanPaymentDateOfPaymentFromDatetimeToDate < ActiveRecord::Migration[5.0]
  def change
    change_column("loan_payments","date_of_payment",:date)
  end
end
