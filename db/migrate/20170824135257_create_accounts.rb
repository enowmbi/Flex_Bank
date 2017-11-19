class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :code
      t.text :description
      t.boolean :contra
      t.integer :parent_id
      t.integer :account_type_id

      t.timestamps
    end
  end
end
