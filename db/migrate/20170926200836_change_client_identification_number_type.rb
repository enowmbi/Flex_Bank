class ChangeClientIdentificationNumberType < ActiveRecord::Migration[5.0]
  def change
      change_column("clients","identification_number",:string)
  end
end
