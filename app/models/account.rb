class Account < ApplicationRecord
  belongs_to :account_type
  has_many :entries #, as: :my_transactions
  # has_many :bank_accounts

  validates :name, :description, :presence => true

end
