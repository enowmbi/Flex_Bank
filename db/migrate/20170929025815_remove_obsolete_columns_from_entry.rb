class RemoveObsoleteColumnsFromEntry < ActiveRecord::Migration[5.0]
  def change
    remove_column("entries","date")
    remove_column("entries","debit_account_id")
  end
end
