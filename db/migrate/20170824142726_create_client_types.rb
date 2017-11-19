class CreateClientTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :client_types do |t|
      t.string :name
      t.text :description
      t.boolean :is_group

      t.timestamps
    end
  end
end
