class Organization < ApplicationRecord
    has_many :settings

    validates :name,:address, :presence => true

    EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

    validates :email,
              # :uniqueness => true,
              :format =>{:with =>EMAIL_REGEX},
              :confirmation => true


    before_save  :capitalize_first_letter_of_name

    private 

    def capitalize_first_letter_of_name
        self.name = self.name.capitalize
        self.motto = self.motto.capitalize
        self.city = self.city.capitalize
        self.address = self.address.capitalize
    end
end
