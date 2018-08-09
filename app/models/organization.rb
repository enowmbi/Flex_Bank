class Organization < ApplicationRecord
	has_many :settings

	validates :name,:address, :phone, :presence => true

	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

	validates :email,
		# :uniqueness => true,
		:format =>{:with =>EMAIL_REGEX},
		:confirmation => true


	before_save  :capitalize_first_letter_of_name



	has_attached_file :image, styles: { large: "450x450>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	private 

	def capitalize_first_letter_of_name
		self.name = self.name.camelcase #.capitalize
		self.motto = self.motto.capitalize
		self.city = self.city.capitalize
		self.address = self.address.capitalize
	end
end
