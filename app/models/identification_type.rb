class IdentificationType < ApplicationRecord
  has_many :employees
  has_many :clients
  has_many :group_members
  has_many :signatories
  has_many :next_of_kins

  validates :name, :description, :presence => true
end
