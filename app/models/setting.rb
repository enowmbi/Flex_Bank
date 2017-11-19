class Setting < ApplicationRecord
    belongs_to :organization
    belongs_to :setting_type
    
    validates :name,:value,:description, :presence => true
end
