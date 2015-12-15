class Apartment < ActiveRecord::Base
	has_many :leases
	belongs_to :building
	has_many :tenants, :through => :leases
	has_many :messages

end
