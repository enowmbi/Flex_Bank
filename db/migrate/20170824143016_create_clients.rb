class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.text :address
      t.string :city
      t.string :phone
      t.string :email
      t.integer :identification_type_id
      t.integer :identification_number
      t.integer :client_type_id

      t.timestamps
    end
  end
end
