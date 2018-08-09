class Entry < ApplicationRecord

  belongs_to :account
  belongs_to :accounting_transaction

  validates :description, :presence => true

  validates :amount, :presence => true,
                     :numericality => {greater_than: 0}

  validates :entry_type, presence: true,
                         inclusion: {in:['Debit','Credit']}

  # before_save  :capitalize_description

  def capitalize_description
    self.description = self.description.capitalize    
  end

  # before_save :is_debit_equals_credit
  #
  # private
  #
  # def is_debit_equals_credit
  #   
  # end

end
