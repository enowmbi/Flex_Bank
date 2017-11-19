class BankAccountType < ApplicationRecord
    has_many :bank_account_type_settings
    has_many :bank_accounts


    validates :name, :description, :presence => true
end
