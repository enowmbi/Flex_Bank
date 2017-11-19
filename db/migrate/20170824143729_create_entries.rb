class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.datetime :date
      t.string :description
      t.integer :debit_account_id
      t.integer :credit_account_id
      t.decimal :amount

      t.timestamps
    end
  end
end
