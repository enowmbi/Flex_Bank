class AddCityToNextOfKin < ActiveRecord::Migration[5.0]
  def change
    add_column("next_of_kins","city",:string,after: "address")
  end
end
