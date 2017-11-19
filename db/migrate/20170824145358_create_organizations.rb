class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :phone
      t.string :email
      t.string :tax_payers_number
      t.string :cnps_number
      t.string :motto
      t.integer :parent_id

      t.timestamps
    end
  end
end
