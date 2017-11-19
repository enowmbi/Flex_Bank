class ModifyEntries < ActiveRecord::Migration[5.0]
    def up
        remove_column("entries","date")
        remove_column("entries","debit_account_id")
        rename_column("entries","credit_account_id","account_id")
    end

    def down
        add_column("entries","date",:date)
        add_column("entries","debit_account_id",:integer)
        change_column("entries","account_id","credit_account_id")
    end
end
