class AccountType < ApplicationRecord
  has_many :accounts

  validates :name, :description, :presence => true

  validates :normal_balance, presence: true,
                             inclusion: {in: %w(Debit Credit)}

end
