class AddEntryTypeAndTransactionIdToEntry < ActiveRecord::Migration[5.0]
  def up
    add_column("entries","entry_type",:string,after: "amount")
    add_column("entries","transaction_id",:integer,after: "entry_type")
  end
  def down
    remove_column("entries","entry_type")
    remove_column("entries","transaction_id")
  end
end
