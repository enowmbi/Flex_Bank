class ChangeSettingTypeIdFromStringToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column("bank_account_type_settings","setting_type_id",:integer)
  end
end
