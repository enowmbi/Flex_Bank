class AddAttributesToLoan < ActiveRecord::Migration[5.0]
  def change
      add_column("loans","charges",:decimal,:after =>"interest")
      add_column("loans","application_fee",:decimal)
      add_column("loans","starts_on",:date)
      add_column("loans","ends_on",:date)
      add_column("loans","duration",:integer)
  end
end
