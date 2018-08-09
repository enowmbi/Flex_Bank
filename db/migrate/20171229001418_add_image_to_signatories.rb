class AddImageToSignatories < ActiveRecord::Migration[5.0]
  def self.up
    change_table :signatories do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :signatories, :image
  end
end
