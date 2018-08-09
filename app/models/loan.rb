class Loan < ApplicationRecord
  has_many :loan_officers
  has_many :employees, :through => :loan_officers

  has_many :loan_payments

  validates :principal_requested, :presence => true, :numericality => {greater_than: 0}


  validates :principal_approved, :presence => true, :numericality => {greater_than: 0}

  validates :interest, :presence => true, :numericality => {greater_than: 0}

  validates :charges, :presence => true,  :numericality => {greater_than_or_equal_to: 0}

  validates :percent, presence: true, inclusion: {in: [true, false]}

  validates :paid_in_full, presence: true, inclusion: {in:[true,false]}

  validates :application_fee, :numericality => {greater_than_or_equal_to: 0}

  validates :starts_on, :ends_on, :presence => true
  
  validates :duration, :presence => true, :numericality => {greater_than: 0}

  validate :end_date_must_be_greater_than_start_date


  private

  def end_date_must_be_greater_than_start_date
    if self.starts_on && self.ends_on 

      errors.add(:ends_on," must be greater than Start Date") if self.starts_on >= self.ends_on

    end

  end
end
