class Department < ApplicationRecord
    has_many :employees

    validates :name, :description ,:presence => true
end
