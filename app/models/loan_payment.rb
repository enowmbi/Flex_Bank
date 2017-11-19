class LoanPayment < ApplicationRecord
   belongs_to :loan


   validates :principal_expected, :presence => true,
       :numericality => true

   validates :principal_paid, :presence => true,
                              :numericality => true

   validates :interest_expected, :presence => true,
                                 :numericality => true

   validates :interest_paid, :presence => true,
                             :numericality => true

   validates :charges_paid, :presence => true,
                            :numericality => true

end
