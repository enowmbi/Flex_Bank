class BankAccountTypeSetting < ApplicationRecord
    belongs_to :bank_account_type
    belongs_to :setting_type

    validates :name, :value,:description, :presence => true
end
