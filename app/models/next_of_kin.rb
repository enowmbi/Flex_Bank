class NextOfKin < ApplicationRecord
    belongs_to :bank_account
    belongs_to :identification_type

    validates :first_name,:last_name,:address,:relationship, :presence => true

    EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

    validates :email, :presence => true,
                      # :uniqueness => true,
                      :format =>{:with =>EMAIL_REGEX},
                      :confirmation => true

end
