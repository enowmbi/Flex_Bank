class AddImageToGroupMembers < ActiveRecord::Migration[5.0]
  def self.up
    change_table :group_members do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :group_members, :image
  end
end
