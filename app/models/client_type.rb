class ClientType < ApplicationRecord
    has_many :clients

    validates :name,:description, :presence => true
end
