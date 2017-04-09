class Region < ActiveRecord::Base
	belongs_to :user

	has_many :stores
	def self.search(search)
  where("cityname LIKE ?", "%#{search}%") 
	end

	validates_presence_of :cityname
end
