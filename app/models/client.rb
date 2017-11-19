class Client < ApplicationRecord
  has_many :group_members
  has_many :bank_accounts
  belongs_to :client_type
  belongs_to :identification_type


  validates :first_name,:last_name,:address,:phone,:identification_number, :presence => true

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  
  validates :email, :presence => true,
                     :format =>{:with =>EMAIL_REGEX},
                     # :uniqueness => true,
                     :confirmation => true
                        
  
  before_save  :capitalize_first_letter_of_name
  
  
  
  # private 
  def full_name
    "#{first_name}" + " " + "#{middle_name}" + " " + "#{last_name}"  

  end

  def full_name_formatted
    "#{last_name}" + ", " + "#{first_name}" + " " + "#{middle_name}"  
  end

  def capitalize_first_letter_of_name
    self.first_name = self.first_name.capitalize
    self.middle_name = self.middle_name.capitalize
    self.last_name  = self.last_name.capitalize
    self.city = self.city.capitalize
    self.address = self.address.capitalize
  end

end
