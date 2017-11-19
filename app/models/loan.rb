class Loan < ApplicationRecord
    has_many :loan_officers
    has_many :employees, :through => :loan_officers

    has_many :loan_payments

    validates :principal_requested, :presence => true,
                                    :numericality => true


    validates :principal_approved, :presence => true,
                                   :numericality => true

    validates :interest, :presence => true,
           :numericality => true

    validates :charges, :presence => true,
            :numericality => true

    validates :application_fee, :presence => true,
            :numericality => true

    validates :duration, :presence => true,
        :numericality => true
    
    validates :starts_on, :ends_on, :presence => true

    validate :end_date_must_be_greater_than_start_date


    private

    def end_date_must_be_greater_than_start_date
    if self.starts_on && self.ends_on 
    
        errors.add(:ends_on," must be greater than Start Date") if self.starts_on >= self.ends_on

    end

    end
end
