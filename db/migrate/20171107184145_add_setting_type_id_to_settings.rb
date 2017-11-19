class AddSettingTypeIdToSettings < ActiveRecord::Migration[5.0]
  def change
    add_column("settings","setting_type_id",:integer)
  end
end
