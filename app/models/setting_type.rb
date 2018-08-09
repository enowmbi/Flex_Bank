class SettingType < ApplicationRecord
    has_many :settings
    has_many :bank_account_type_settings


    validates :name,:description, :presence => true
end
