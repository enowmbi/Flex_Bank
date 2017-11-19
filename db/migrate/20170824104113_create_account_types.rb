class CreateAccountTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :account_types do |t|
      t.string :name
      t.string :description
      t.string :normal_balance

      t.timestamps
    end
  end
end
