class AddCityToGroupMembers < ActiveRecord::Migration[5.0]
  def change
    add_column("group_members","city",:string,after: "address")
  end

end
