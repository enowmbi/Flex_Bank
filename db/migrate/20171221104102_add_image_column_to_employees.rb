class AddImageColumnToEmployees < ActiveRecord::Migration[5.0]
  def self.up
    change_table :employees do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :employees, :image
  end
end
