class AddImageToNextOfKins < ActiveRecord::Migration[5.0]

  def self.up
    change_table :next_of_kins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :next_of_kins, :image
  end
end
