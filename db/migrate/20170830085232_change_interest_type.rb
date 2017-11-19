class ChangeInterestType < ActiveRecord::Migration[5.0]
  def change
      change_column("loans","interest",:decimal)
  end
end
