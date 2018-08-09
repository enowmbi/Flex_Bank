class NextOfKin < ApplicationRecord
    belongs_to :bank_account
    belongs_to :identification_type

    validates :first_name,:last_name,:address, :city, :relationship, :presence => true

    EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

    validates :email, :presence => true,
                      # :uniqueness => true,
                      :format =>{:with =>EMAIL_REGEX},
                      :confirmation => true

  before_save  :capitalize_first_letter_of_name


	has_attached_file :image, styles: { large: "450x450>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def full_name
    "#{first_name}" + " " + "#{middle_name}" + " " + "#{last_name}"  
  end

  def capitalize_first_letter_of_name
    self.first_name = self.first_name.capitalize
    self.middle_name = self.middle_name.capitalize
    self.last_name  = self.last_name.capitalize
    self.city = self.city.capitalize
    self.address = self.address.capitalize
self.relationship = self.relationship.capitalize
  end
end
