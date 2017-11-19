class ChangeAccountTypeToBankAccountTypeInBankAccounts < ActiveRecord::Migration[5.0]
  def change
    rename_column "bank_accounts","account_type_id","bank_account_type_id"
  end
end
