class CreateBankAccountTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_account_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
