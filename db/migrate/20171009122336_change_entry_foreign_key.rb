class ChangeEntryForeignKey < ActiveRecord::Migration[5.0]
  def change
    rename_column("entries","transaction_id","accounting_transaction_id")
  end
end
