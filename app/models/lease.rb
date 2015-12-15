class Lease < ActiveRecord::Base
	has_one :Apartment
	has_one :Tenant
end
