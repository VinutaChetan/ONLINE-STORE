class Store < ActiveRecord::Base
	belongs_to :region

	validates_presence_of :name,:address,:phone_number,:website,:tags,:region_id
	validates_length_of :phone_number,is:10
	validates_numericality_of :phone_number 
	validates_uniqueness_of :phone_number
end
