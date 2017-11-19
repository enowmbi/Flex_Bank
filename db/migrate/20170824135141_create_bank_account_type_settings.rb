class CreateBankAccountTypeSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_account_type_settings do |t|
      t.string :name
      t.string :value
      t.text :description
      t.string :frequency
      t.boolean :percent
      t.string :apply_to
      t.integer :bank_account_type_id
      t.string :setting_type_id

      t.timestamps
    end
  end
end
