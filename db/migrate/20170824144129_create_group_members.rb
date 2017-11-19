class CreateGroupMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :group_members do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.text :address
      t.string :phone
      t.string :email
      t.integer :identification_type_id
      t.integer :identification_number
      t.integer :client_id

      t.timestamps
    end
  end
end
