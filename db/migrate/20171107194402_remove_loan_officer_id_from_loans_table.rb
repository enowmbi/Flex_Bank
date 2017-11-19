class RemoveLoanOfficerIdFromLoansTable < ActiveRecord::Migration[5.0]
  def change
    remove_column("loans","loan_officer_id")
  end
end
