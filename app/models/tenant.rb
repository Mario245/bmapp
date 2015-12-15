class Tenant < User
	has_many :leases
	belongs_to :apartment, through => :leases
end
