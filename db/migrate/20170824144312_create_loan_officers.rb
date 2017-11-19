class CreateLoanOfficers < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_officers do |t|
      t.integer :employee_id
      t.integer :loan_id

      t.timestamps
    end
  end
end
