class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :name
      t.string :value
      t.text :description
      t.integer :organization_id

      t.timestamps
    end
  end
end
