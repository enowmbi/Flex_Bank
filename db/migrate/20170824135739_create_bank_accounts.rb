class CreateBankAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_accounts do |t|
      t.integer :account_number
      t.string :currency
      t.boolean :enable_sms_alert
      t.boolean :enable_email_alert
      t.integer :account_type_id
      t.integer :account_officer

      t.timestamps
    end
  end
end
