class AddCityToSignatory < ActiveRecord::Migration[5.0]
  def change
    add_column("signatories","city",:string,after: "address")
  end
end
