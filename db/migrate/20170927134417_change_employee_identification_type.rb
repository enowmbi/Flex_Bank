class ChangeEmployeeIdentificationType < ActiveRecord::Migration[5.0]
  def change
change_column("employees","identification_number",:string)
  end
end
