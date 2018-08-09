class LoanPayment < ApplicationRecord
   belongs_to :loan


   validates :principal_expected, :presence => true, :numericality =>{greater_than: 0}

   validates :principal_paid, :presence => true,
                              :numericality => {greater_than_or_equal_to: 0}

   validates :interest_expected, :presence => true,
                                 :numericality => {greater_than_or_equal_to: 0}

   validates :interest_paid, :presence => true,
                             :numericality => {greater_than_or_equal_to: 0}
                                              
   validates :charges_paid, :presence => true,
                           :numericality => {greater_than_or_equal_to: 0}   

   validates :date_of_payment, :presence => true

end
