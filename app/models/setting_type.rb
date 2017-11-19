class SettingType < ApplicationRecord
    has_many :settings

    validates :name,:description, :presence => true
end
