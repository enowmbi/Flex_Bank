class AddClientIdToBankAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column("bank_accounts","client_id",:integer,:before =>"created_at")
  end
end
