class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.decimal :principal_requested
      t.decimal :principal_approved
      t.string :interest
      t.boolean :percent
      t.boolean :paid_in_full
      t.integer :loan_officer_id

      t.timestamps
    end
  end
end
