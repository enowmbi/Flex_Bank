class CreateSignatories < ActiveRecord::Migration[5.0]
  def change
    create_table :signatories do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.text :address
      t.string :phone
      t.string :email
      t.string :relationship_or_position
      t.boolean :major_signatory
      t.integer :identification_type_id
      t.integer :identification_number
      t.integer :bank_account_id

      t.timestamps
    end
  end
end
