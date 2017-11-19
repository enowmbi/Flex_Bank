class CreateLoanPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_payments do |t|
      t.integer :loan_id
      t.decimal :principal_expected
      t.decimal :principal_paid
      t.decimal :interest_expected
      t.decimal :interest_paid
      t.decimal :charges_paid
      t.datetime :date_of_payment

      t.timestamps
    end
  end
end
