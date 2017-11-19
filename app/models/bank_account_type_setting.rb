class BankAccountTypeSetting < ApplicationRecord
    belongs_to :bank_account_type

    validates :name, :value,:description, :presence => true
end
