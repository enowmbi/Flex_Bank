class ChangeTransaction < ActiveRecord::Migration[5.0]
  def change
    rename_table("transactions","accounting_transactions")
  end
end
