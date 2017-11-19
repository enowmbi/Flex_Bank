class BankAccount < ApplicationRecord
    has_many :next_of_kins
    has_many :signatories

    belongs_to :bank_account_type
    belongs_to :client
    # belongs_to :account
    
    validates :account_number, :currency, :presence => true #TODO:uniqueness of bank accounts
end
