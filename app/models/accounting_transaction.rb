class AccountingTransaction < ApplicationRecord
  has_many :entries #,as: :my_transactions

  validates :transaction_date,presence: true
  validates :description, presence: true

  before_save  :capitalize_description

  def capitalize_description
    self.description = self.description.capitalize    
  end

end


